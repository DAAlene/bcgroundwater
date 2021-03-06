context("monthly_values and gwl_monthly_plot")

test_that("monthly_values returns data", {
  g <- get_gwl(well = 309)
  expect_silent(m <- monthly_values(g))
  expect_is(m, "data.frame")
  expect_gt(nrow(m), 0)
  
  expect_silent(p <- gwl_monthly_plot(m, last12 = TRUE))
  expect_is(p, "ggplot")
})