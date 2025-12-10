x = c(3, 5, 1, 2, 4, 3, 5, 6)
nums = c(12, 21, 56, 65, 34, 43, 35, 53)
n = length(x)

for(ii in 1:10^5)
{
  ord = sample(8, 8)
  a = (100*x[ord[1]] + 10*x[ord[2]] + x[ord[3]]) * x[ord[4]]
  b = 1000*x[ord[5]] + 100*x[ord[6]] + 10*x[ord[7]] + x[ord[8]]
  cond_1 = a == b
  cond_2 = (10*x[ord[1]] + x[ord[2]]) %in% nums
  cond_3 = (10*x[ord[3]] + x[ord[4]]) %in% nums
  cond_4 = (10*x[ord[5]] + x[ord[6]]) %in% nums
  cond_5 = (10*x[ord[7]] + x[ord[8]]) %in% nums
  if(cond_1 & cond_2 & cond_3 & cond_4 & cond_5) break
}

100*x[ord[1]] + 10*x[ord[2]] + x[ord[3]]
x[ord[4]]
1000*x[ord[5]] + 100*x[ord[6]] + 10*x[ord[7]] + x[ord[8]]
