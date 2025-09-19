-- Problem: 1757. Recyclable and Low Fat Products
-- Link: https://leetcode.com/problems/recyclable-and-low-fat-products/
-- Difficulty: Easy

-- Explanation:
-- We need to return product_id where both low_fats = 'Y' AND recyclable = 'Y'.
-- Simple ​WHERE clause with AND condition.

SELECT product_id
FROM Products
WHERE low_fats = 'Y' AND recyclable = 'Y';
