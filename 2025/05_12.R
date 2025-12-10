m <- matrix(
  c(
    3,2,7,3,1,5,5,
    4,4,6,9,3,7,8,
    8,7,1,1,6,2,4,
    1,3,1,2,2,2,7,
    3,5,2,4,1,6,8,
    9,5,4,4,4,9,7,
    1,1,3,7,2,8,3
  ),
  nrow = 7,
  ncol = 7,
  byrow = TRUE
)
lsums = c(14, 21, 15, 10, 19, 17, 14)
csums = c(19, 9, 15, 26, 16, 17, 8)
soln = matrix(NA, nrow = 7, ncol = 7)

n = 2^7
allocm <- as.matrix(expand.grid(rep(list(0:1), 7)))
checa_linha <- function(ii)
{
  check = allocm[which((allocm %*% m[ii,]) == lsums[ii]),]
  for(jj in 1:7)
  {
    if(prod(check[, jj])) 
    { 
      soln[ii,jj] = 1
      lsums[ii] = lsums[ii] - m[ii,jj]
      csums[jj] = csums[jj] - m[ii,jj]
      m[ii,jj] = 0
    }
    if(prod(1-check[, jj]))
    {
      soln[ii,jj] = 0
      m[ii,jj] = 0
    }
  }
  list(m=m, soln=soln, csums=csums, lsums=lsums)
}

checa_coluna <- function(jj)
{
  check = allocm[which((allocm %*% m[,jj]) == csums[jj]),]
  for(ii in 1:7)
  {
    if(prod(check[, ii])) 
    { 
      soln[ii,jj] = 1
      lsums[ii] = lsums[ii] - m[ii,jj]
      csums[jj] = csums[jj] - m[ii,jj]
      m[ii,jj] = 0
    }
    if(prod(1-check[, ii]))
    {
      soln[ii,jj] = 0
      m[ii,jj] = 0
    }
  }
  list(m=m, soln=soln, csums=csums, lsums=lsums)
}

for(kk in 1:3)
{
  for(ii in 1:7)
  {
    resp = checa_linha(ii)
    m = resp$m
    soln = resp$soln
    lsums = resp$lsums
    csums = resp$csums
    resp = checa_coluna(ii)
    m = resp$m
    soln = resp$soln
    csums = resp$csums
    lsums = resp$lsums
  }
}

soln
