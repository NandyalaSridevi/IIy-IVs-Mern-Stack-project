# CraveKart - Quick Start Guide

## 🚀 Getting Started in 5 Minutes

### Prerequisites
- Node.js installed
- MongoDB installed & running
- Code editor (VS Code recommended)

---

## ⚡ Quick Setup

### Step 1: Start MongoDB
```bash
# Windows
mongod

# Mac
brew services start mongodb-community

# Linux
sudo systemctl start mongod
```

### Step 2: Install & Run Backend
```bash
cd FoodBackend
npm install
npm run dev
```

**Expected Output:**
```
✓ MongoDB Connected
✓ Seeded 6 restaurants, 24+ items, and default users
🚀 Server running on port 5000
```

### Step 3: Open Frontend
```
Open your browser and go to:
http://localhost:5000/FoodFrontend/login.html
```

---

## 🧪 Test Each Role

### 1. Admin Login
```
URL: http://localhost:5000/FoodFrontend/login.html
Email: admin@cravekart.com
Password: admin123
Role: ADMIN
→ See dashboard with stats and restaurant management
```

### 2. Restaurant Login
```
Email: restaurant1@cravekart.com
Password: rest123
Role: RESTAURANT
→ View restaurant dashboard and manage orders
```

### 3. Customer Registration
```
URL: http://localhost:5000/FoodFrontend/register.html
1. Select "Customer" role
2. Fill in: Name, Email, Password, Phone
3. Create account
4. Browse restaurants and food items
```

---

## 📋 Project Structure

```
OnlineFoodOrdering/
├── FoodBackend/
│   ├── models/
│   │   ├── UpdatedUser.js
│   │   ├── Order.js
│   │   ├── Restaurant.js
│   │   ├── MenuItem.js
│   │   └── Payment.js
│   ├── routes/
│   │   ├── auth.js
│   │   ├── admin.js
│   │   ├── orders.js
│   │   ├── restaurants.js
│   │   └── menuItems.js
│   ├── middleware/
│   │   └── auth.js
│   ├── server.js
│   └── package.json
│
├── FoodFrontend/
│   ├── login.html
│   ├── register.html
│   ├── admin-dashboard.html
│   ├── restaurant-dashboard.html
│   ├── index.html
│   ├── script.js
│   └── style.css
│
├── IMPLEMENTATION_GUIDE.md
├── QUICKSTART.md
└── README.md
```

---

## 🔑 Key Features

✅ **Role-Based Authentication**
- Customer, Restaurant, Admin roles
- JWT token-based security
- Secure password hashing

✅ **User Functions**
- Browse restaurants
- Add to cart & place orders
- Track order status
- Rate restaurants

✅ **Restaurant Functions**
- Manage menu items
- View incoming orders
- Accept/Reject orders
- Update order status

✅ **Admin Functions**
- View dashboard statistics
- Manage restaurants
- Suspend low engagement restaurants
- View analytics

✅ **Order Management**
- Complete order lifecycle
- Real-time status updates
- Payment integration ready

---

## 📡 API Endpoints Quick Reference

### Auth
- `POST /api/auth/register` - Register user/restaurant
- `POST /api/auth/login` - Login any role
- `GET /api/auth/profile` - Get user profile

### User Features
- `GET /api/restaurants` - List all restaurants
- `GET /api/menu/:restaurantId` - View menu
- `POST /api/orders` - Place order
- `GET /api/orders/user/:id` - My orders

### Restaurant Features
- `POST /api/menu` - Add menu item
- `GET /api/orders/restaurant/:id` - View orders
- `PUT /api/orders/status/:id` - Update status

### Admin Features
- `GET /api/admin/stats` - Dashboard stats
- `GET /api/admin/restaurants` - All restaurants
- `PUT /api/admin/restaurant/:id/suspend` - Suspend
- `GET /api/admin/analytics` - Analytics

---

## 🛠️ Troubleshooting

### Backend not starting?
```bash
# Check if MongoDB is running
mongod

# Clear node_modules and reinstall
rm -rf node_modules
npm install
npm run dev
```

### Cannot access frontend?
```
Make sure FoodFrontend folder is in same directory as server.js
Access via: http://localhost:5000/FoodFrontend/login.html
```

### Login not working?
```
1. Check MongoDB is running: mongod
2. Clear localStorage: Open DevTools → Application → Clear
3. Try default admin first: admin@cravekart.com / admin123
```

### CORS errors?
Backend is configured to allow all origins. If still getting errors:
- Check server.js has: app.use(cors())
- Restart backend server

---

## 📊 Data Models

### User (UpdatedUser)
- name, email, password, phone
- role: USER | RESTAURANT | ADMIN
- For restaurants: ownerName, restaurantName, isActive

### Order
- user, restaurant, items[], status
- totalAmount, paymentMethod, paymentStatus
- deliveryAddress, rating, review

### MenuItem
- name, price, category, image
- restaurant (reference)

### Payment
- orderId, userId, amount
- paymentType, paymentStatus
- transactionId

---

## 🎯 Common Use Cases

### Create New Customer & Order
1. Register at `/register.html` (Customer role)
2. Login at `/login.html`
3. Browse restaurants on home page
4. Add items to cart
5. Place order
6. Choose payment method
7. Track order status

### Manage Restaurant
1. Register at `/register.html` (Restaurant role)
2. Login as restaurant
3. View incoming orders
4. Accept/Reject orders
5. Update order status
6. View analytics

### Monitor Platform as Admin
1. Login with admin@cravekart.com / admin123
2. View total users, restaurants, orders, revenue
3. Check restaurant list
4. Identify low engagement restaurants (< 5 orders/30 days)
5. Suspend poor performers
6. View analytics

---

## 📈 Scripts

```json
{
  "start": "node server.js",         // Run in production
  "dev": "nodemon server.js"         // Run with auto-reload
}
```

```bash
npm run dev    // Start with nodemon
npm start      // Run production
```

---

## 🎓 For Your Viva/Presentation

**Key Points to Highlight:**

1. **Three-role system** - Users, Restaurants, Admin
2. **JWT authentication** - Secure token-based auth
3. **Role-based access** - Different features per role
4. **Order lifecycle** - Complete flow from placement to delivery
5. **Admin engagement tracking** - Automatic restaurant suspension
6. **Real-time ready** - Socket.io structure in place
7. **Scalable architecture** - Clean separation of concerns
8. **Production ready** - Error handling, validation, security

---

## ✅ Checklist Before Demo

- [ ] MongoDB is running
- [ ] Backend server is running on port 5000
- [ ] Can access login page
- [ ] Admin login works (admin@cravekart.com / admin123)
- [ ] Can register new customer
- [ ] Can browse restaurants
- [ ] Can place test order
- [ ] Admin dashboard shows statistics

---

## 🆘 Need Help?

Check these files for detailed info:
- `IMPLEMENTATION_GUIDE.md` - Complete architecture
- `README.md` - Project overview
- `SETUP_CHECKLIST.md` - Detailed setup
- `TESTING_GUIDE.md` - Testing procedures

---

**Last Updated:** March 2, 2026  
**Status:** ✅ Ready to Run
