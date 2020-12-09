module catalyst_interfaces
  interface
    subroutine InitializeFlowGrid(nx, lx, ny, ly, nz, zc, &
                                  uData, vData, wData, pData, qcritData, &
                                  procDims, procIdx) bind(C, name="InitializeFlowGrid")
      use iso_c_binding
      integer(c_int), value :: nx, ny, nz
      real(c_double), value :: lx, ly
      real(c_double) ::  zc(*)
      real(c_double) ::  uData(*)
      real(c_double) ::  vData(*)
      real(c_double) ::  wData(*)
      real(c_double) ::  pData(*)
      real(c_double) ::  qcritData(*)
      integer(c_int) ::  procDims(*)
      integer(c_int) ::  procIdx(*)
    end subroutine InitializeFlowGrid
  end interface

  interface
    subroutine CatalystInitialize(active) bind(C, name="CatalystInitialize")
      use iso_c_binding
      logical(c_bool), value :: active
    end subroutine CatalystInitialize
  end interface

  interface
    subroutine CatalystFinalize() bind(C, name="CatalystFinalize")
    end subroutine CatalystFinalize
  end interface

  interface
    subroutine CatalystCoProcess(time, timeStep) bind(C, name="CatalystCoProcess")
      use iso_c_binding
      integer(c_int), value :: timeStep
      real(c_double), value :: time
    end subroutine CatalystCoProcess
  end interface

end module catalyst_interfaces