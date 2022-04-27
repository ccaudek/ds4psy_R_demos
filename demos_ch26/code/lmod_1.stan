
  data {
    int<lower=0> N;     // number of data points
    vector[N] x;        // covariate / predictor
    vector[N] y;        // target
  }
  parameters {
    real alpha;          // intercept
    real beta;           // slope
    real<lower=0> sigma; // standard deviation is constrained to be positive
  }
  transformed parameters {
    // deterministic transformation of parameters and data
    vector[N] mu = alpha + beta * x; // linear model
  }
  model {
    alpha ~ normal(0, 2.5); // prior
    beta ~ normal(0, 2.5);  // prior
    sigma ~ cauchy(0, 10);   // as sigma is constrained to be positive,
                            // this is same as half-normal prior
    y ~ normal(mu, sigma);  // likelihood
  }
  generated quantities {
  vector[N] y_rep;
    // the generated quantities block requires a for loop
    for (i in 1:N) {
      y_rep[i] = normal_rng(alpha + beta * x[i], sigma);
    }
  }

