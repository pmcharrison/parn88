context("test-encode_pc_set")

test_that("examples", {
  expect_equal(encode_pc_set(c(0, 4, 7)),
               as.integer(c(1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0)))
  expect_equal(encode_pc_set(c(0)),
               as.integer(c(1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)))
  expect_equal(encode_pc_set(integer()),
               as.integer(c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)))
})
