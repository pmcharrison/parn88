context("test-regression")

library(magrittr)

test_88 <- function(res, ..., digits = 1) {
  expect_equal(
    root_ambiguity(c(...), root_support = "v1") %>% round(digits),
    res
  )
}

test_that("Parncutt (1988): Table 4", {
  # Dyads
  test_88(2.2, 0, 1)
  test_88(2.0, 0, 2)
  test_88(2.1, 0, 3)
  test_88(1.9, 0, 4)
  test_88(1.8, 0, 5)
  test_88(2.2, 0, 6)

  # Triads
  test_88(2.0, 0, 4, 7)
  test_88(2.1, 0, 3, 7)
  test_88(2.3, 0, 4, 8)
  test_88(2.5, 0, 3, 6)

  # Sevenths
  test_88(2.1, 0, 4, 7, 10)
  test_88(2.3, 0, 3, 7, 10)
  test_88(2.3, 0, 4, 7, 11)
  test_88(2.4, 0, 3, 6, 10)
  test_88(2.9, 0, 3, 6, 9)
})

test_that("Sanity checks", {
  expect_equal(root(c(0, 4, 7)), 0)
  expect_equal(root(c(1, 4, 9)), 9)
  expect_gt(root_ambiguity(c(0, 3, 6)),
            root_ambiguity(c(0, 4, 7)))
})
