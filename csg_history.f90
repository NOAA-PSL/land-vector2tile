module csg_history

  contains

  ! ============================================================================
  ! AUTO-GENERATED Fortran NetCDF Definition Code
  ! Generated from: csg.cdl << "ncdump enkfgdas.t12z.csg_sfcf000.nc > csg.cdl"
  ! ============================================================================

  subroutine csg_history_header(filename, tile_dimlen, ncid)
 
  use netcdf
  implicit none
  
  
  integer, intent(in)            :: tile_dimlen
  integer, intent(out)           :: ncid
  character(len=*), intent(in)   :: filename

  integer :: status, i, varid
  character(len=*), parameter :: version = '1.0'

  ! ========== DIMENSION IDs ==========
  integer :: dimid_grid_xt, dimid_grid_yt
  integer :: dimid_tile, dimid_time, dimid_nchars

  ! ========== VARIABLE IDs ==========
  integer :: varid_grid_xt, varid_grid_yt, varid_time
  integer :: varid_tile, varid_time_iso, varid_lon, varid_lat
  integer :: varid_land, varid_snod 
  integer :: varid_soill1, varid_soill2, varid_soill3, varid_soill4
  integer :: varid_soilt1, varid_soilt2, varid_soilt3, varid_soilt4
  integer :: varid_soilw1, varid_soilw2, varid_soilw3, varid_soilw4
  integer :: varid_sotyp, varid_spfh2m, varid_tmp2m, varid_vtype, varid_wd, varid_weasd

  ! ========== CREATE FILE & DEFINE DIMENSIONS ==========
  status = nf90_create(filename, NF90_CLOBBER, ncid)
  if (status /= nf90_noerr) call handle_err(status)
  
  status = nf90_def_dim(ncid, 'grid_xt', tile_dimlen, dimid_grid_xt)
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_def_dim(ncid, 'grid_yt', tile_dimlen, dimid_grid_yt)
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_def_dim(ncid, 'tile', 6, dimid_tile)
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_def_dim(ncid, 'time', 1, dimid_time)
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_def_dim(ncid, 'nchars', 20, dimid_nchars)
  if (status /= nf90_noerr) call handle_err(status)

  ! ========== DEFINE VARIABLES & ATTRIBUTES ==========
  print*, "Defining variables"
  ! grid_xt - 
  status = nf90_def_var(ncid, 'grid_xt', NF90_DOUBLE, (/ dimid_grid_xt /), varid_grid_xt)
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_grid_xt, 'cartesian_axis', 'X')
  if (status /= nf90_noerr) call handle_err(status)

  ! grid_yt - 
  status = nf90_def_var(ncid, 'grid_yt', NF90_DOUBLE, (/ dimid_grid_yt /), varid_grid_yt)
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_grid_yt, 'cartesian_axis', 'Y')
  if (status /= nf90_noerr) call handle_err(status)

  ! time - time
  status = nf90_def_var(ncid, 'time', NF90_DOUBLE, (/ dimid_time /), varid_time)
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_time, 'calendar', 'GREGORIAN')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_time, 'calendar_type', 'GREGORIAN')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_time, 'cartesian_axis', 'T')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_time, 'long_name', 'time')
  if (status /= nf90_noerr) call handle_err(status)
  !status = nf90_put_att(ncid, varid_time, 'units', 'hours since 2024-06-09 12:00:00') ! put actual unit later
  !if (status /= nf90_noerr) call handle_err(status)

  ! tile - cubed-sphere face
  status = nf90_def_var(ncid, 'tile', NF90_INT, (/ dimid_tile /), varid_tile)
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_tile, 'long_name', 'cubed-sphere face')
  if (status /= nf90_noerr) call handle_err(status)

  ! time_iso - valid time
  status = nf90_def_var(ncid, 'time_iso', NF90_CHAR, (/ dimid_nchars, dimid_time /), varid_time_iso)
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_time_iso, 'long_name', 'valid time')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_time_iso, 'description', 'ISO 8601 datetime string')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_time_iso, '_Encoding', 'UTF-8')
  if (status /= nf90_noerr) call handle_err(status)

  ! lon - T-cell longitude
  status = nf90_def_var(ncid, 'lon', NF90_DOUBLE, (/ dimid_grid_xt, dimid_grid_yt, dimid_tile /), varid_lon)
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_lon, 'long_name', 'T-cell longitude')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_lon, 'units', 'degrees_E')
  if (status /= nf90_noerr) call handle_err(status)

  ! lat - T-cell latitude
  status = nf90_def_var(ncid, 'lat', NF90_DOUBLE, (/ dimid_grid_xt, dimid_grid_yt, dimid_tile /), varid_lat)
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_lat, 'long_name', 'T-cell latitude')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_lat, 'units', 'degrees_N')
  if (status /= nf90_noerr) call handle_err(status)

  ! land - sea-land-ice mask (0-sea, 1-land, 2-ice)
  status = nf90_def_var(ncid, 'land', NF90_DOUBLE, (/ dimid_grid_xt, dimid_grid_yt, dimid_tile, dimid_time /), varid_land)
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_land, '_FillValue', 9.99e+20_8)
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_land, 'cell_methods', 'time: point')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_land, 'long_name', 'sea-land-ice mask (0-sea, 1-land, 2-ice)')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_land, 'missing_value', 9.99e+20_8)
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_land, 'output_file', 'cubed_sphere_grid_sfc')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_land, 'units', 'numerical')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_land, 'coordinates', 'lon lat')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_land, 'grid_mapping', 'cubed_sphere')
  if (status /= nf90_noerr) call handle_err(status)

  ! snod - surface snow depth
  status = nf90_def_var(ncid, 'snod', NF90_DOUBLE, (/ dimid_grid_xt, dimid_grid_yt, dimid_tile, dimid_time /), varid_snod)
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_snod, '_FillValue', 9.99e+20_8)
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_snod, 'cell_methods', 'time: point')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_snod, 'long_name', 'surface snow depth')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_snod, 'missing_value', 9.99e+20_8)
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_snod, 'output_file', 'cubed_sphere_grid_sfc')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_snod, 'units', 'm')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_snod, 'coordinates', 'lon lat')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_snod, 'grid_mapping', 'cubed_sphere')
  if (status /= nf90_noerr) call handle_err(status)

  ! soill1 - liquid soil mositure at layer-1
  status = nf90_def_var(ncid, 'soill1', NF90_DOUBLE, (/ dimid_grid_xt, dimid_grid_yt, dimid_tile, dimid_time /), varid_soill1)
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soill1, '_FillValue', 9.99e+20_8)
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soill1, 'cell_methods', 'time: point')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soill1, 'long_name', 'liquid soil mositure at layer-1')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soill1, 'missing_value', 9.99e+20_8)
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soill1, 'output_file', 'cubed_sphere_grid_sfc')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soill1, 'units', 'xxx')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soill1, 'coordinates', 'lon lat')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soill1, 'grid_mapping', 'cubed_sphere')
  if (status /= nf90_noerr) call handle_err(status)

  ! soill2 - liquid soil mositure at layer-2
  status = nf90_def_var(ncid, 'soill2', NF90_DOUBLE, (/ dimid_grid_xt, dimid_grid_yt, dimid_tile, dimid_time /), varid_soill2)
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soill2, '_FillValue', 9.99e+20_8)
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soill2, 'cell_methods', 'time: point')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soill2, 'long_name', 'liquid soil mositure at layer-2')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soill2, 'missing_value', 9.99e+20_8)
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soill2, 'output_file', 'cubed_sphere_grid_sfc')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soill2, 'units', 'xxx')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soill2, 'coordinates', 'lon lat')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soill2, 'grid_mapping', 'cubed_sphere')
  if (status /= nf90_noerr) call handle_err(status)

  ! soill3 - liquid soil mositure at layer-3
  status = nf90_def_var(ncid, 'soill3', NF90_DOUBLE, (/ dimid_grid_xt, dimid_grid_yt, dimid_tile, dimid_time /), varid_soill3)
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soill3, '_FillValue', 9.99e+20_8)
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soill3, 'cell_methods', 'time: point')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soill3, 'long_name', 'liquid soil mositure at layer-3')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soill3, 'missing_value', 9.99e+20_8)
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soill3, 'output_file', 'cubed_sphere_grid_sfc')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soill3, 'units', 'xxx')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soill3, 'coordinates', 'lon lat')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soill3, 'grid_mapping', 'cubed_sphere')
  if (status /= nf90_noerr) call handle_err(status)

  ! soill4 - liquid soil mositure at layer-4
  status = nf90_def_var(ncid, 'soill4', NF90_DOUBLE, (/ dimid_grid_xt, dimid_grid_yt, dimid_tile, dimid_time /), varid_soill4)
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soill4, '_FillValue', 9.99e+20_8)
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soill4, 'cell_methods', 'time: point')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soill4, 'long_name', 'liquid soil mositure at layer-4')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soill4, 'missing_value', 9.99e+20_8)
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soill4, 'output_file', 'cubed_sphere_grid_sfc')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soill4, 'units', 'xxx')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soill4, 'coordinates', 'lon lat')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soill4, 'grid_mapping', 'cubed_sphere')
  if (status /= nf90_noerr) call handle_err(status)

  ! soilt1 - soil temperature unknown layer 1
  status = nf90_def_var(ncid, 'soilt1', NF90_DOUBLE, (/ dimid_grid_xt, dimid_grid_yt, dimid_tile, dimid_time /), varid_soilt1)
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soilt1, '_FillValue', 9.99e+20_8)
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soilt1, 'cell_methods', 'time: point')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soilt1, 'long_name', 'soil temperature unknown layer 1')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soilt1, 'missing_value', 9.99e+20_8)
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soilt1, 'output_file', 'cubed_sphere_grid_sfc')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soilt1, 'units', 'K')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soilt1, 'coordinates', 'lon lat')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soilt1, 'grid_mapping', 'cubed_sphere')
  if (status /= nf90_noerr) call handle_err(status)

  ! soilt2 - soil temperature unknown layer 2
  status = nf90_def_var(ncid, 'soilt2', NF90_DOUBLE, (/ dimid_grid_xt, dimid_grid_yt, dimid_tile, dimid_time /), varid_soilt2)
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soilt2, '_FillValue', 9.99e+20_8)
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soilt2, 'cell_methods', 'time: point')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soilt2, 'long_name', 'soil temperature unknown layer 2')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soilt2, 'missing_value', 9.99e+20_8)
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soilt2, 'output_file', 'cubed_sphere_grid_sfc')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soilt2, 'units', 'K')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soilt2, 'coordinates', 'lon lat')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soilt2, 'grid_mapping', 'cubed_sphere')
  if (status /= nf90_noerr) call handle_err(status)

  ! soilt3 - soil temperature unknown layer 3
  status = nf90_def_var(ncid, 'soilt3', NF90_DOUBLE, (/ dimid_grid_xt, dimid_grid_yt, dimid_tile, dimid_time /), varid_soilt3)
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soilt3, '_FillValue', 9.99e+20_8)
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soilt3, 'cell_methods', 'time: point')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soilt3, 'long_name', 'soil temperature unknown layer 3')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soilt3, 'missing_value', 9.99e+20_8)
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soilt3, 'output_file', 'cubed_sphere_grid_sfc')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soilt3, 'units', 'K')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soilt3, 'coordinates', 'lon lat')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soilt3, 'grid_mapping', 'cubed_sphere')
  if (status /= nf90_noerr) call handle_err(status)

  ! soilt4 - soil temperature unknown layer 4
  status = nf90_def_var(ncid, 'soilt4', NF90_DOUBLE, (/ dimid_grid_xt, dimid_grid_yt, dimid_tile, dimid_time /), varid_soilt4)
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soilt4, '_FillValue', 9.99e+20_8)
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soilt4, 'cell_methods', 'time: point')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soilt4, 'long_name', 'soil temperature unknown layer 4')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soilt4, 'missing_value', 9.99e+20_8)
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soilt4, 'output_file', 'cubed_sphere_grid_sfc')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soilt4, 'units', 'K')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soilt4, 'coordinates', 'lon lat')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soilt4, 'grid_mapping', 'cubed_sphere')
  if (status /= nf90_noerr) call handle_err(status)

  ! soilw1 - volumetric soil moisture unknown layer 1
  status = nf90_def_var(ncid, 'soilw1', NF90_DOUBLE, (/ dimid_grid_xt, dimid_grid_yt, dimid_tile, dimid_time /), varid_soilw1)
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soilw1, '_FillValue', 9.99e+20_8)
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soilw1, 'cell_methods', 'time: point')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soilw1, 'long_name', 'volumetric soil moisture unknown layer 1')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soilw1, 'missing_value', 9.99e+20_8)
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soilw1, 'output_file', 'cubed_sphere_grid_sfc')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soilw1, 'units', 'fraction')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soilw1, 'coordinates', 'lon lat')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soilw1, 'grid_mapping', 'cubed_sphere')
  if (status /= nf90_noerr) call handle_err(status)

  ! soilw2 - volumetric soil moisture unknown layer 2
  status = nf90_def_var(ncid, 'soilw2', NF90_DOUBLE, (/ dimid_grid_xt, dimid_grid_yt, dimid_tile, dimid_time /), varid_soilw2)
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soilw2, '_FillValue', 9.99e+20_8)
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soilw2, 'cell_methods', 'time: point')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soilw2, 'long_name', 'volumetric soil moisture unknown layer 2')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soilw2, 'missing_value', 9.99e+20_8)
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soilw2, 'output_file', 'cubed_sphere_grid_sfc')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soilw2, 'units', 'fraction')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soilw2, 'coordinates', 'lon lat')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soilw2, 'grid_mapping', 'cubed_sphere')
  if (status /= nf90_noerr) call handle_err(status)

  ! soilw3 - volumetric soil moisture unknown layer 3
  status = nf90_def_var(ncid, 'soilw3', NF90_DOUBLE, (/ dimid_grid_xt, dimid_grid_yt, dimid_tile, dimid_time /), varid_soilw3)
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soilw3, '_FillValue', 9.99e+20_8)
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soilw3, 'cell_methods', 'time: point')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soilw3, 'long_name', 'volumetric soil moisture unknown layer 3')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soilw3, 'missing_value', 9.99e+20_8)
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soilw3, 'output_file', 'cubed_sphere_grid_sfc')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soilw3, 'units', 'fraction')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soilw3, 'coordinates', 'lon lat')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soilw3, 'grid_mapping', 'cubed_sphere')
  if (status /= nf90_noerr) call handle_err(status)

  ! soilw4 - volumetric soil moisture unknown layer 4
  status = nf90_def_var(ncid, 'soilw4', NF90_DOUBLE, (/ dimid_grid_xt, dimid_grid_yt, dimid_tile, dimid_time /), varid_soilw4)
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soilw4, '_FillValue', 9.99e+20_8)
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soilw4, 'cell_methods', 'time: point')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soilw4, 'long_name', 'volumetric soil moisture unknown layer 4')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soilw4, 'missing_value', 9.99e+20_8)
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soilw4, 'output_file', 'cubed_sphere_grid_sfc')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soilw4, 'units', 'fraction')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soilw4, 'coordinates', 'lon lat')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_soilw4, 'grid_mapping', 'cubed_sphere')
  if (status /= nf90_noerr) call handle_err(status)

  ! spfh2m - 2m specific humidity
  status = nf90_def_var(ncid, 'spfh2m', NF90_DOUBLE, (/ dimid_grid_xt, dimid_grid_yt, dimid_tile, dimid_time /), varid_spfh2m)
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_spfh2m, '_FillValue', 9.99e+20_8)
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_spfh2m, 'cell_methods', 'time: point')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_spfh2m, 'long_name', '2m specific humidity')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_spfh2m, 'missing_value', 9.99e+20_8)
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_spfh2m, 'output_file', 'cubed_sphere_grid_sfc')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_spfh2m, 'units', 'kg/kg')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_spfh2m, 'coordinates', 'lon lat')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_spfh2m, 'grid_mapping', 'cubed_sphere')
  if (status /= nf90_noerr) call handle_err(status)

  ! tmp2m - 2m temperature
  status = nf90_def_var(ncid, 'tmp2m', NF90_DOUBLE, (/ dimid_grid_xt, dimid_grid_yt, dimid_tile, dimid_time /), varid_tmp2m)
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_tmp2m, '_FillValue', 9.99e+20_8)
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_tmp2m, 'cell_methods', 'time: point')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_tmp2m, 'long_name', '2m temperature')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_tmp2m, 'missing_value', 9.99e+20_8)
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_tmp2m, 'output_file', 'cubed_sphere_grid_sfc')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_tmp2m, 'units', 'K')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_tmp2m, 'coordinates', 'lon lat')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_tmp2m, 'grid_mapping', 'cubed_sphere')
  if (status /= nf90_noerr) call handle_err(status)

  ! vtype - vegetation type in integer
  status = nf90_def_var(ncid, 'vtype', NF90_DOUBLE, (/ dimid_grid_xt, dimid_grid_yt, dimid_tile, dimid_time /), varid_vtype)
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_vtype, '_FillValue', 9.99e+20_8)
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_vtype, 'cell_methods', 'time: point')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_vtype, 'long_name', 'vegetation type in integer')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_vtype, 'missing_value', 9.99e+20_8)
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_vtype, 'output_file', 'cubed_sphere_grid_sfc')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_vtype, 'units', 'number')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_vtype, 'coordinates', 'lon lat')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_vtype, 'grid_mapping', 'cubed_sphere')
  if (status /= nf90_noerr) call handle_err(status)

  ! weasd - surface snow water equivalent
  status = nf90_def_var(ncid, 'weasd', NF90_DOUBLE, (/ dimid_grid_xt, dimid_grid_yt, dimid_tile, dimid_time /), varid_weasd)
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_weasd, '_FillValue', 9.99e+20_8)
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_weasd, 'cell_methods', 'time: point')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_weasd, 'long_name', 'surface snow water equivalent')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_weasd, 'missing_value', 9.99e+20_8)
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_weasd, 'output_file', 'cubed_sphere_grid_sfc')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_weasd, 'units', 'kg/m**2')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_weasd, 'coordinates', 'lon lat')
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_att(ncid, varid_weasd, 'grid_mapping', 'cubed_sphere')
  if (status /= nf90_noerr) call handle_err(status)

  ! ========== END DEFINITION MODE ==========
  status = nf90_enddef(ncid)
  if (status /= nf90_noerr) call handle_err(status)

  print*, "Putting dimension vars"

  status = nf90_inq_varid(ncid, "grid_xt", varid)
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_var(ncid, varid ,(/(i, i=1, tile_dimlen)/) )

  status = nf90_inq_varid(ncid, "grid_yt", varid)
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_var(ncid, varid ,(/(i, i=1, tile_dimlen)/) )

  status = nf90_inq_varid(ncid, "tile", varid)
  if (status /= nf90_noerr) call handle_err(status)
  status = nf90_put_var(ncid, varid, (/1, 2, 3, 4, 5, 6/) )
  
  !status = nf90_close(ncid)
  !if (status /= nf90_noerr) call handle_err(status)
  
  print *, 'NetCDF file create & header definition successful: ', trim(filename)
  print *, 'Dimensions: ', 7
  print *, 'Variables: ', 162
  
  contains
  
    subroutine handle_err(status)
      integer, intent(in) :: status
      if (status /= nf90_noerr) then
        print *, 'NetCDF Error: ', trim(nf90_strerror(status))
        stop
      end if
    end subroutine handle_err
  
  end subroutine csg_history_header

end module csg_history
