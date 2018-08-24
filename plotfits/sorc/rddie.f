       parameter(nvar=4,nlev=21,nstcs=6,nstcw=9)
       parameter(nreg=7,nsub=1,ntx=1000)
       parameter(iprreg=1,iprsub=1)

       dimension gdata(nreg,nsub)

      do ivar=1,nvar
      do nst=1,3        
      do ilev=1,nlev
      read(11) gdata
      print'(3i4,7f8.2)',ivar,ilev,nst,gdata
      enddo
      enddo
      enddo

      stop
      end

