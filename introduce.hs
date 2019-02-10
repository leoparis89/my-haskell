main :: IO ()

hellWorld :: IO ()
hellWorld = putStrLn "Hello world"

introduce :: String -> String -> IO ()
introduce name1 name2 = do
  putStrLn (name1 ++ ", this is " ++ name2)
  putStrLn (name2 ++ ", this is " ++ name1)


howAreYou = putStrLn "What is your name ?"
                >>= \_ -> getLine
                >>= \name -> putStrLn $ "hello " ++ name ++ "!"

howAreYou' = putStrLn "What is your name ?"
                >> getLine
                >>= \name -> putStrLn $ "hello " ++ name ++ "!"

howAreYou'' = do
                putStrLn "What is your name ?"
                name <- getLine
                putStrLn $ "hello " ++ name ++ "!"



howAreYou''' = do
                putStrLn "What is your name ?"
                name <- getLine
                let phrase = "hello" ++ name ++ " !"
                putStrLn phrase

main = howAreYou'''
