
data {
  int<lower=0> N;
  vector[N] y;
}
parameters {
  real mu;
  real<lower=0> sigma;
}
model {
  mu ~ normal(0.5, 0.5);
  sigma ~ cauchy(0, 1);
  y ~ normal(mu, sigma);
}

