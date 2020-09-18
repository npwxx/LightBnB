BEGIN;

INSERT INTO users (name, email, password)
VALUES 
('Eva Stanley','eva@mailinator.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Louisa Meyer','LMeyer@mailinator.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Dominic Parks','parks@mailinator.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');

INSERT INTO properties (owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, 
parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code)
VALUES
(1, 'Blank Corner', 'description', 'https://placekitten.com/200/300', 'https://placekitten.com/200/300', 42,
2, 1, 3, 'Canada', 'This', 'that', 'nb', 'h0h0h0'),
(2, 'Fun place', 'description', 'https://placekitten.com/200/300', 'https://placekitten.com/200/300', 42,
2, 1, 3, 'Canada', 'This', 'that', 'nb', 'h0h0h0'),
(3, 'Dark Corner', 'description', 'https://placekitten.com/200/300', 'https://placekitten.com/200/300', 42,
2, 1, 3, 'Canada', 'This', 'that', 'nb', 'h0h0h0');

INSERT INTO reservations (guest_id, property_id, start_date, end_date) 
VALUES 
(1, 1, '2018-09-11', '2018-09-26'),
(2, 2, '2019-01-04', '2019-02-01'),
(3, 3, '2021-10-01', '2021-10-14');

INSERT INTO property_reviews (guest_id, property_id, reservation_id, rating, message)
VALUES
(2, 2, 2, 4, 'messages'),
(1, 1, 1, 4, 'messages'),
(3, 3, 3, 4, 'messages');

COMMIT;