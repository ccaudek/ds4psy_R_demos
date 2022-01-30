
data {
  int<lower=0> N;
  vector[N] y;
}
parameters {
  real mu;
  real<lower=0> sigma;
}
model {
  mu ~ beta(2, 2);
  sigma ~ cauchy(0, 1);
  y ~ normal(mu, sigma);
}

