All the testing data is included in webdevproject.sql file in the folder. 


***** ***** ***** ***** ***** ***** ***** *****

Login Account(Admin)
Email: admin@gmail.com
Password: Password123
(After migrating the admin table)

If cannot login into admin system, please add an account by yourself with these following command. 

Add admin account to database, (type these commands in your Visual Studio Code Terminal):

php artisan tinker

$model = new App\Models\Admin

$model -> name = 'Admin';

$model -> email = 'Admin@gmail.com';

$model -> password = Hash::make('Password123');

$model -> save();


Login Account(Customer)
Email: customer@gmail.com
Password: customer123


***** ***** ***** ***** ***** ***** ***** *****

Payment, stripe developer to do testing. 
credit card number: 4242424242424242
*expired date cannot put before current date.

Link: https://dashboard.stripe.com/test/developers


***** ***** ***** ***** ***** ***** ***** *****

Fulfill email, mailtrap to do testing

Link: https://mailtrap.io/inboxes/2045953/messages/3243369324


***** ***** ***** ***** ***** ***** ***** *****
