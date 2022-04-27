
data {
  int<lower=0> N;
  vector[N] y;
  real MU;
  real<lower=0> SD;
  real<lower=0> SIGMA;
}
parameters {
  real mu;
}
model {
  mu ~ normal(MU, SD);
  y ~ normal(mu, SIGMA);
}

