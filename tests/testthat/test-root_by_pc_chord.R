test_that("root_by_pc_chord", {
  chords <- list(
    hrep::pc_chord(c(0, 4, 7)),
    hrep::pc_chord(c(4, 7, 0)),
    hrep::pc_chord(c(7, 2, 5, 11)),
    hrep::pc_chord(c(0, 5, 9))
  )
  chord_ids <- purrr::map_int(chords, hrep::encode_pc_chord)

  root_by_pc_chord[chord_ids] %>%
    expect_equal(c(0, 0, 7, 5))
})
