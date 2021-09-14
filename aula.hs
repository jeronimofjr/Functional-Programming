safeLog x
    | x > 0 = Just (log x)
    | otherwise = Nothing

safeSqrt x
    | x > 0 = Just (sqrt x)
    | otherwise = Nothing

safeLogSqrt x = do
    y <- safeSqrt x
    z <- safeLog y
    return z