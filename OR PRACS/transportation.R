costs <- matrix(c(10,2,20,11,
                  12,7,9,20,
                  4,14,16,18), nrow = 3, byrow = TRUE)

colnames(costs) <- c("customer1","customer2","customer3","customer4")
rownames(costs) <- c("supplier1","supplier2","supplier3")

row.signs <- rep("<=",3)
row.rhs <- c(15,25,10)

col.signs <- rep("<=",4)
col.rhs <- c(5,15,15,15)

Totalcost <- lp.transport(costs,"min",row.signs,row.rhs,col.signs,col.rhs)

lp.transport(costs,"min",row.signs,row.rhs,col.signs,col.rhs)$solution
print(Totalcost)

