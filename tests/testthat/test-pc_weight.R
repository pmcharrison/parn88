context("test-pc_weight")

test_that("examples", {
  expect_equal(
    pc_weight(pc = 0,
              pc_set = encode_pc_set(c(0, 4, 7)),
              root_support = root_support_weights$v2),
    10 + 3 + 5
  )
  expect_equal(
    pc_weight(pc = 1,
              pc_set = encode_pc_set(c(0, 4, 7)),
              root_support = root_support_weights$v2),
    0
  )
  expect_equal(
    pc_weight(pc = 2,
              pc_set = encode_pc_set(c(0, 4, 7)),
              root_support = root_support_weights$v2),
    2 + 1
  )
  expect_equal(
    pc_weight(pc = 4,
              pc_set = encode_pc_set(c(0, 4, 7)),
              root_support = root_support_weights$v2),
    10
  )
})
