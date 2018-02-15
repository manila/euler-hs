fib :: Integer -> Integer
fib 1 = 1
fib 2 = 1
fib n = fib (n - 1) + fib (n - 2)

main :: IO ()
main = putStrLn $ (show . sum . filter even . takeWhile (<4000000) . map (\n -> fib n)) [1..]
