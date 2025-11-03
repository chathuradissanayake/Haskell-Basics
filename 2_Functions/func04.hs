-- Process text: split into lines, reverse each line, join back
(unlines . map reverse . lines) "dog\ncat\nfish"

lines "dog\ncat\nfish"  -- ["dog", "cat", "fish"]
map reverse ["dog", "cat", "fish"]  -- ["god", "tac", "hsif"]
unlines ["god", "tac", "hsif"]  -- "god\ntac\nhsif\n"

-- Final output: "god\ntac\nhsif\n"
-- Steps:
-- 1. lines "dog\ncat\nfish" = ["dog", "cat", "fish"]
-- 2. map reverse ["dog", "cat", "fish"] = ["god", "tac", "hsif"]
-- 3. unlines ["god", "tac", "hsif"] = "god\ntac\nhsif\n"