SELECT * FROM customer_behavior.customer_behavior_data limit 20;

#Q1 what is the totel revenue Genrated by the male vs. female customer

select gender, SUM(purchase_amount) as revenue
from customer_behavior.customer_behavior_data
group by gender ;

-- Q2 which customer as discount but still purchase avg then purchase_amount?

select customer_id, purchase_amount
from customer_behavior.customer_behavior_data
WHERE discount_applied = 'Yes' and purchase_amount >=(select AVG(purchase_amount) from customer_behavior.customer_behavior_data)
order by purchase_amount;



-- Q3 which are the top 5 product that with highest avg review rating ?

select item_purchased, ROUND(AVG(review_rating),2) as Product_RR
from customer_behavior.customer_behavior_data
group by item_purchased
order by AVG(review_rating) desc
limit 10;

#Q4
select shipping_type, ROUND(AVG(purchase_amount),2) as AVG_Purchase_AM
from customer_behavior.customer_behavior_data
where shipping_type in ('Standard','Express')
group by shipping_type;

-- Q5. Do subscribed customers spend more? Compare average spend and total revenue between subscribers and non-subscribers.

select subscription_status,
COUNT(customer_id) as Total_Customers,
ROUND(AVG(purchase_amount),2) as avg_spandings,
ROUND(SUM(purchase_amount),2) as Total_Revenue
from customer_behavior.customer_behavior_data
group by subscription_status
order by avg_spandings;

-- Q6. Which 5 products have the highest percentage of purchases with discounts applied?

SELECT item_purchased,
ROUND(100.0 * SUM(CASE WHEN discount_applied = 'Yes' THEN 1 ELSE 0 END)/COUNT(*),2) AS discount_rate
FROM customer_behavior.customer_behavior_data
GROUP BY item_purchased
ORDER BY discount_rate DESC
LIMIT 5;


-- Q7. Segment customers into New, Returning, and Loyal based on their total 
-- number of previous purchases, and show the count of each segment. 

with customer_type as (
SELECT customer_id, previous_purchases,
CASE 
    WHEN previous_purchases = 1 THEN 'New'
    WHEN previous_purchases BETWEEN 2 AND 10 THEN 'Returning'
    ELSE 'Loyal'
    END AS customer_segment
FROM customer_behavior.customer_behavior_data)

select customer_segment,count(*) AS "Number of Customers" 
from customer_type 
group by customer_segment;

-- Q8. What are the top 3 most purchased products within each category? 
WITH item_counts AS (
    SELECT category,
           item_purchased,
           COUNT(customer_id) AS total_orders,
           ROW_NUMBER() OVER (PARTITION BY category ORDER BY COUNT(customer_id) DESC) AS item_rank
    FROM customer_behavior.customer_behavior_data
    GROUP BY category, item_purchased
)
SELECT item_rank,category, item_purchased, total_orders
FROM item_counts
WHERE item_rank <=3;
 
-- Q9. Are customers who are repeat buyers (more than 5 previous purchases) also likely to subscribe?
SELECT subscription_status,
       COUNT(customer_id) AS repeat_buyers
FROM customer_behavior.customer_behavior_data
WHERE previous_purchases > 5
GROUP BY subscription_status;

-- Q10. What is the revenue contribution of each age group? 
SELECT age_group,
SUM(purchase_amount) AS total_revenue
FROM customer_behavior.customer_behavior_data
GROUP BY age_group
ORDER BY total_revenue desc;




