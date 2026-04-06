# 🍔 CraveKart - Real-time Food Delivery App

A modern, real-time food ordering and delivery platform similar to Swiggy and Zomato. Built with Node.js, Express, MongoDB, Socket.IO, and vanilla JavaScript.

## 🎯 Features

### User Features
- ✅ User Authentication (Signup/Login)
- ✅ Browse Restaurants with Filters
- ✅ Search Restaurants & Dishes
- ✅ View Menu with Pricing
- ✅ Add items to Cart
- ✅ Real-time Cart Management
- ✅ Checkout & Payment Selection
- ✅ Delivery Address Management
- ✅ Promo/Coupon Codes
- ✅ Order Tracking with Live Updates
- ✅ Order Status Timeline (Pending → Confirmed → Preparing → Ready → On the Way → Delivered)
- ✅ Delivery Partner Details
- ✅ Rating & Reviews
- ✅ Order History

### Real-time Features
- 🔄 Live Order Status Updates via Socket.IO
- 🗺️ Real-time Delivery Tracking
- 📱 Push Notifications
- 💬 Chat with Delivery Partner
- 📞 Call Driver

### Admin/Restaurant Features
- 🏪 Restaurant Management
- 📋 Menu Management
- 🎫 Order Management
- 📊 Analytics Dashboard

## 📁 Project Structure

```
OnlineFoodOrdering/
├── FoodBackend/
│   ├── models/
│   │   ├── User.js
│   │   ├── UpdatedUser.js
│   │   ├── Restaurant.js
│   │   ├── MenuItem.js
│   │   └── Order.js
│   ├── routes/
│   │   ├── restaurants.js
│   │   ├── menuItems.js
│   │   └── orders.js
│   ├── server.js
│   └── package.json
├── FoodFrontend/
│   ├── index.html
│   ├── restaurant.html
│   ├── cart.html
│   ├── track.html
│   ├── login.html
│   ├── register.html
│   ├── menu.html
│   ├── admin.html
│   ├── style.css
│   └── script.js
└── README.md
```

## 🛠️ Tech Stack

### Backend
- **Node.js** - Runtime
- **Express.js** - Web Framework
- **MongoDB** - Database
- **Socket.IO** - Real-time Communication
- **CORS** - Cross-origin Resource Sharing
- **Multer** - File Upload
- **Dotenv** - Environment Variables

### Frontend
- **HTML5** - Structure
- **CSS3** - Styling (Modern, Responsive)
- **JavaScript (Vanilla)** - Functionality
- **Socket.IO Client** - Real-time Updates

## 🚀 Installation & Setup

### Prerequisites
- Node.js (v14+)
- MongoDB (v4.4+)
- npm or yarn

### Backend Setup

1. **Install Dependencies**
   ```bash
   cd FoodBackend
   npm install
   ```

2. **Setup MongoDB**
   - Make sure MongoDB is running on `mongodb://127.0.0.1:27017`
   - Or update the connection string in `server.js`

3. **Start Backend Server**
   ```bash
   npm start
   # Or for development with auto-reload:
   npm run dev
   ```

   The backend will be running on: `http://localhost:5000`

### Frontend Setup

1. **Navigate to Frontend Directory**
   ```bash
   cd FoodFrontend
   ```

2. **Start a Local Server**
   ```bash
   # Using Python 3
   python -m http.server 8000

   # Using Python 2
   python -m SimpleHTTPServer 8000

   # Using Node's http-server
   npx http-server
   ```

3. **Open in Browser**
   ```
   http://localhost:8000
   ```

## 📚 API Documentation

### Authentication
- **POST** `/api/register` - Sign up new user
- **POST** `/api/login` - Login user

### Restaurants
- **GET** `/api/restaurants/all` - Get all restaurants
- **GET** `/api/restaurants/:id` - Get restaurant by ID
- **GET** `/api/restaurants/search/:query` - Search restaurants
- **POST** `/api/restaurants/create` - Create restaurant (Admin)
- **PATCH** `/api/restaurants/:id` - Update restaurant

### Menu Items
- **GET** `/api/menu/restaurant/:restaurantId` - Get menu items
- **GET** `/api/menu/:id` - Get item by ID
- **POST** `/api/menu/create` - Create menu item
- **PATCH** `/api/menu/:id` - Update menu item

### Orders
- **POST** `/api/orders/create` - Place order
- **GET** `/api/orders/:orderId` - Get order details
- **GET** `/api/orders/user/:userId` - Get user orders
- **PATCH** `/api/orders/:orderId/status` - Update order status
- **PATCH** `/api/orders/:orderId/cancel` - Cancel order

## 🔌 Socket.IO Events

### Client → Server
- `join_user` - User joins their order room
- `join_restaurant` - Restaurant joins their room
- `order_status_update` - Update order status
- `order_placed` - Notify restaurant of new order
- `delivery_location_update` - Update delivery location
- `send_message` - Send message to delivery partner

### Server → Client
- `order_updated` - Notify user of order status change
- `delivery_tracking` - Send delivery location
- `new_order` - Notify restaurant of new order
- `delivery_partner_status` - Delivery partner status
- `receive_message` - Receive message from delivery partner

## 🎨 UI/UX Features

- **Modern Design** - Inspired by Swiggy & Zomato
- **Responsive Layout** - Works on all devices
- **Smooth Animations** - Gradient backgrounds, hover effects
- **Real-time Updates** - Live order status with animations
- **Intuitive Navigation** - Easy to use interface
- **Color Scheme** - Primary color: #ef4f5f (Red), Secondary: #1c1c1c (Dark)

## 📝 Database Models

### User
```javascript
{
  name: String,
  email: String (unique),
  password: String,
  phone: String,
  addresses: Array,
  totalOrders: Number,
  totalSpent: Number,
  wallet: Number,
  userType: enum ['user', 'restaurant', 'admin']
}
```

### Restaurant
```javascript
{
  name: String,
  description: String,
  image: String,
  rating: Number (1-5),
  deliveryTime: Number (minutes),
  deliveryFee: Number,
  minOrder: Number,
  cuisines: [String],
  isOpen: Boolean
}
```

### MenuItem
```javascript
{
  name: String,
  description: String,
  price: Number,
  category: String,
  restaurant: ObjectId,
  rating: Number,
  isVeg: Boolean,
  preparationTime: Number,
  isAvailable: Boolean
}
```

### Order
```javascript
{
  orderId: String (unique),
  user: ObjectId,
  restaurant: ObjectId,
  items: [{menuItem, quantity, price}],
  totalAmount: Number,
  status: enum ['pending', 'confirmed', 'preparing', 'ready', 'on_the_way', 'delivered', 'cancelled'],
  deliveryAddress: {street, city, pincode, phone},
  estimatedDeliveryTime: DateTime,
  deliveryPartner: {name, phone, location},
  paymentMethod: enum ['card', 'upi', 'wallet', 'cash'],
  rating: Number (1-5),
  review: String
}
```

## 🔐 Security Features

- Password hashing with bcryptjs
- JWT Authentication (can be implemented)
- CORS protection
- Input validation
- Real-time authentication with Socket.IO

## 🚀 Scaling Features

- Database indexing for faster queries
- Caching with Redis (can be implemented)
- Load balancing with Node cluster
- Horizontal scaling ready

## 📱 Pages

### Frontend Pages
1. **index.html** - Home page with restaurant listings
2. **restaurant.html** - Restaurant detail & menu
3. **cart.html** - Checkout page with payment options
4. **track.html** - Order tracking with live updates
5. **login.html** - Login page
6. **register.html** - Registration page
7. **menu.html** - Menu browsing
8. **admin.html** - Admin dashboard

## 🎯 Usage Examples

### User Journey
1. Visit homepage → `index.html`
2. Search or browse restaurants
3. Click on restaurant → `restaurant.html`
4. Add items to cart
5. Click cart → `cart.html` (checkout)
6. Fill delivery details & choose payment
7. Place order → redirected to tracking page
8. Track order in real-time → `track.html`
9. Rate order after delivery

## 🔮 Future Enhancements

- [ ] Payment Gateway Integration (Stripe, Razorpay)
- [ ] Delivery Partner App
- [ ] Admin Dashboard with Analytics
- [ ] Restaurant Partner Dashboard
- [ ] Advanced Search & Filtering
- [ ] Wishlist & Saved Items
- [ ] Loyalty Points System
- [ ] Push Notifications
- [ ] Mobile App (React Native/Flutter)
- [ ] Multi-language Support
- [ ] AI-based Recommendations

## 📊 Database Seeding

To seed demo data:

```bash
# Use MongoDB Compass or mongoimport to load sample data
# Sample data scripts can be created in FoodBackend/seeds/
```

## 🐛 Troubleshooting

### Backend Issues
- **MongoDB connection failed**: Ensure MongoDB process is running
- **Port 5000 already in use**: Change port in `server.js`
- **CORS errors**: Check CORS configuration in `server.js`

### Frontend Issues
- **API calls failing**: Ensure backend is running on port 5000
- **Real-time updates not working**: Check Socket.IO server
- **Styling issues**: Clear browser cache and reload

## 📞 Support

For issues or questions:
1. Check the console for error messages
2. Verify all services are running
3. Check network tab in browser DevTools
4. Restart both backend and frontend

## 📄 License

MIT License - Feel free to use this project for personal or commercial purposes.

## 👨‍💻 Developer Notes

- All endpoints return JSON responses
- Timestamps are in ISO 8601 format
- Error messages are descriptive for debugging
- Real-time events use Socket.IO namespaces for scalability
- Frontend uses localStorage for session management

---

**Happy Coding! 🚀**

Built with ❤️ for food delivery enthusiasts
