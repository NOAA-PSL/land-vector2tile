program vector2tile_driver

  use namelist_mod
  use vector2tile_restart_mod
  use vector2tile_perturbation_mod
  implicit none
  
  include 'mpif.h'

  type(namelist_type)  :: namelist
  
  integer :: ierr, irank, nprocs, myrank  !, lunit, ncid, n, nn
  character(len=3) :: ens_str

  call mpi_init(ierr)
  call mpi_comm_size(mpi_comm_world, nprocs, ierr)
  call mpi_comm_rank(mpi_comm_world, myrank, ierr)

  if (myrank==0) print*, "starting vector-tile conversion program on ", nprocs, " procs"

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
! Get namelist file name from command line
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

  call get_command_argument(1, namelist%namelist_name)
  if(namelist%namelist_name == "") then 
        if (myrank==0)  print *,  "add namelist to the command line: "
        call mpi_abort(mpi_comm_world, 10)
  endif
  
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
! Read namelist information
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

  call ReadNamelist(namelist)

  if (myrank==0)  print*, "conversion direction: ",namelist%direction

  if(namelist%direction /= "tile2vector" .and. namelist%direction /= "vector2tile" .and. &
         namelist%direction /= "lndp2vector" .and. namelist%direction /= "lndp2tile") then
      if (myrank==0)  print*, "conversion direction: ",namelist%direction, " not recognized"
      call mpi_abort(mpi_comm_world, 10)
  end if

  do irank=myrank, namelist%ens_size - 1, nprocs
    
      write(ens_str, '(I3.3)') irank+1

      !keep the default for ens_size=1
      if(namelist%ens_size > 1) then
         namelist%vector_restart_path = trim(namelist%vector_restart_path)//"/mem"//ens_str//"/"
         namelist%tile_restart_path = trim( namelist%tile_restart_path)//"/mem"//ens_str//"/"
         namelist%output_path = trim(namelist%output_path)//"/mem"//ens_str//"/"
      endif  

      !!!!!!!!!!!!!!!!!!!!!!!!!!!!!
      ! Decide the pathway
      !!!!!!!!!!!!!!!!!!!!!!!!!!!!!

      select case (namelist%direction)
      
        case ("tile2vector", "vector2tile")
    
          if (myrank==0)  write(*,*) "Option: "//trim(namelist%direction)
          call vector2tile_restart(namelist)
        
        case ("lndp2vector", "lndp2tile")
    
          if (myrank==0)  write(*,*) "Option: "//trim(namelist%direction)
          call mapping_perturbation(namelist)
        
        case default
        
          if (myrank==0)  write(*,*) "choose a valid conversion direction"
          call mpi_abort(mpi_comm_world, 10)
      
      end select 

  end do

  if (myrank==0) print*, "vector-tile conversion program finished"
  call mpi_finalize(ierr)

end program vector2tile_driver
