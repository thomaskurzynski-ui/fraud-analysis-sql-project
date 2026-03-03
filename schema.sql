CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY,
    user_id INT,
    transaction_date DATE,
    amount DECIMAL(10,2),
    country VARCHAR(50),
    payment_method VARCHAR(50),
    is_fraud INT
);
