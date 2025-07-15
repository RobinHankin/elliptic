test_that("Test suite aab", {

    jj <- as.primitive(c(30+1i, 1-2i))
    expect_true(all(jj == as.primitive(jj)))
    expect_true(is.primitive(jj))
    expect_true(is.primitive(as.primitive(jj)))

    expect_error(as.primitive(c(3, 4)))
    expect_true(cc(1+1i, 4-9i) == 1)
    expect_true(is.null(congruence(0:1, 1)))
    
    jj <- congruence(1:0, 1)
    expect_true(is.na(jj[1]))
    expect_true(jj[2] == 1)

} )
