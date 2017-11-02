module Outliers

export tukey_fences

"""
    tukey_fences(data; k=1.5)

Compute the values beyond which elements of `data` are considered anomalous by
to Tukey (1977; John W, Exploratory Data Analysis, Addison-Wesley, ISBN
0-201-07616-0, OCLC 3058187).  Larger values of `k` consider fewer elements
to be anomalous.
"""
function tukey_fences(data; k=1.5)
    q1,q3 = quantile(data,[0.25,0.75])
    iqr = q3-q1
    fence = k*iqr
    q1-fence, q3+fence
end

end # module
