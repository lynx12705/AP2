#function for R0
R0 <- function(beta, gamma, N){
  return(beta * N / gamma)
}

# Parameters
beta <- 0.02
N <- 100

# Range of gamma
gamma_vals <- seq(0.2, 4, 0.01)

# Compute R0
R0_vals <- R0(beta, gamma_vals, N)

# Plot
plot(gamma_vals, R0_vals, type="l",
     xlab="Recovery rate (gamma)",
     ylab="R0",
     main="R0 vs Recovery Rate")

# Add threshold line
abline(h=1, col="red", lty=2)