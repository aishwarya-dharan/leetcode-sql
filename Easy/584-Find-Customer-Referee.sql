-- Pr​oblem: [LeetCode 584. Find Customer Referee]
-- Link: https://leetcode.com/problems/find-customer-referee/description/?source=submission-ac
-- Difficulty: Easy

-- Explanation:
-- In this query, we use "IS NOT FALSE" instead of a simple comparison.
-- Why?
-- Because SQL uses 3-valued logic: TRUE, FALSE, and UNKNOWN (NULL).
--   - A normal condition like (col = 'Y') only passes rows where the result is TRUE.
--   - If col is NULL, the result becomes UNKNOWN → and the row gets dropped.
-- "IS NOT FALSE" is different:
--   - TRUE → kept
--   - UNKNOWN (NULL) → also kept
--   - FALSE → excluded
--
-- This ensures rows with NULL values are still included, unless the condition is explicitly FALSE.

SELECT name FROM customer WHERE referee_id <> 2 OR referee_id IS NULL;
or
SELECT name FROM customer WHERE referee_id != 2 OR referee_id IS NULL;
