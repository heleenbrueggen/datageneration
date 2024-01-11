test_that("data is a matrix", {
  expect_true(is.matrix(datageneration(100, 3, list(1, 2, 3), list(1, 1, 1))))

})
