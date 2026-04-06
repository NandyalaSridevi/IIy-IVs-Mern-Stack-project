# 🚀 Quick Start Guide - CraveKart

## Prerequisites Setup

Ensure you have:
- Node.js v14+ installed
- MongoDB running locally
- npm or yarn package manager

---

## Backend Setup (5 minutes)

### Step 1: Install Dependencies
```bash
cd FoodBackend
npm install
```

### Step 2: Verify MongoDB
MongoDB should be running on: `mongodb://127.0.0.1:27017`

To start MongoDB on Windows:
```powershell
mongod
```

### Step 3: Start Backend Server
```bash
cd FoodBackend
npm start
```

✅ Backend will be live at: `http://localhost:5000`

You should see:
```
✓ MongoDB Connected
🚀 Server running on port 5000
```

---

## Frontend Setup (2 minutes)

### Option A: Using Python (Recommended)

**Windows PowerShell:**
```powershell
cd FoodFrontend
python -m http.server 8000
```

**macOS/Linux:**
```bash
cd FoodFrontend
python3 -m http.server 8000
```

### Option B: Using Node's HTTP Server
```bash
cd FoodFrontend
npx http-server -p 8000
```

✅ Frontend will be live at: `http://localhost:8000`

---

## Access the Application

Open your browser and visit:
- **Home:** http://localhost:8000
- **Login:** http://localhost:8000/login.html
- **Register:** http://localhost:8000/register.html
- **Admin Dashboard:** http://localhost:8000/admin.html

---

## Account Types

You can create or log in with three different roles:
- **Customer (user)** – browse & order food
- **Restaurant** – manage menu/items
- **Admin** – view analytics & orders

## Test Credentials (Demo)

**For Development Testing:**
- Email: test@example.com
- Password: password123

Or create new account by signing up.

---

## Key Features to Try

### 1. Browse Restaurants
- Visit homepage → View all restaurants
- Use search to filter restaurants
- Click on restaurant to see menu

### 2. Place an Order
- Add items to cart from menu
- Click checkout
- Fill delivery details
- Select payment method
- Place order → Track in real-time

### 3. Track Order
- After placing order, track it in real-time
- See order status updates
- Delivery partner details (demo)

### 4. Admin Dashboard
- Visit `/admin.html` (requires login)
- View today's orders, revenue, ratings
- Manage menu items
- View analytics

---

## API Testing

### Test Endpoints with curl:

**Get All Restaurants:**
```bash
curl http://localhost:5000/api/restaurants/all
```

**Login User:**
```bash
curl -X POST http://localhost:5000/api/login \
-H "Content-Type: application/json" \
-d '{"email":"test@example.com","password":"password123"}'
```

**Create Order:**
```bash
curl -X POST http://localhost:5000/api/orders/create \
-H "Content-Type: application/json" \
-d '{...order data...}'
```

---

## Troubleshooting

### Backend Issues

**Error: MongoDB connection failed**
- Make sure MongoDB is running: `mongod`
- Check if port 27017 is available

**Error: Port 5000 already in use**
- Kill process using port 5000 or change port in `server.js`

**Error: npm install fails**
- Delete `node_modules` folder
- Run `npm install` again
- Try with `npm install --no-save package.json`

### Frontend Issues

**API calls failing (404)**
- Ensure backend is running on port 5000
- Check CORS configuration in `server.js`

**Real-time updates not working**
- Check if Socket.IO is properly initialized
- Open browser console for errors

**CSS not loading**
- Clear browser cache (Ctrl+Shift+Delete)
- Hard refresh (Ctrl+Shift+R)

---

## Project File Map

```
FoodBackend/
├── server.js              ← Start here (runs on port 5000)
├── package.json           ← Dependencies
├── models/                ← Database schemas
│   ├── UpdatedUser.js
│   ├── Restaurant.js
│   ├── MenuItem.js
│   └── Order.js
└── routes/                ← API endpoints
    ├── restaurants.js
    ├── menuItems.js
    └── orders.js

FoodFrontend/
├── index.html             ← Home page
├── login.html             ← Login page
├── register.html          ← Sign up page
├── restaurant.html        ← Restaurant menu
├── cart.html              ← Checkout
├── track.html             ← Order tracking
├── admin.html             ← Admin dashboard
├── style.css              ← Main styles
├── script.js              ← Main logic
└── ...
```

---

## Next Steps After Setup

1. **Seed Demo Data**
   - Create restaurants and menu items through API or admin dashboard
   - Or use MongoDB Compass to import sample data

2. **Customize**
   - Update colors in `style.css` (--primary-color)
   - Change API_BASE_URL in `script.js` if using different port
   - Add your restaurant details

3. **Deploy (Future)**
   - Deploy backend to Heroku/AWS/Azure
   - Host frontend on Netlify/Vercel
   - Set up production MongoDB

---

## Environment Variables

Create `.env` file in FoodBackend/:
```
MONGODB_URI=mongodb://127.0.0.1:27017/foodorder
PORT=5000
NODE_ENV=development
```

Then update `server.js` to use these variables.

---

## Common Commands

### Start Everything
```bash
# Terminal 1 - Backend
cd FoodBackend
npm start

# Terminal 2 - Frontend
cd FoodFrontend
python -m http.server 8000
```

### View Logs
Backend logs appear in terminal where npm start was run.

### Stop Services
- Backend: Ctrl+C in backend terminal
- Frontend: Ctrl+C in frontend server terminal

---

## Performance Tips

- Use MongoDB indexes for faster queries
- Implement pagination for large datasets
- Cache static assets in browser
- Use CDN for images (font.com, cloudinary)

---

## Need Help?

Check these files:
- **API Docs:** See routes/ folder
- **Database Schema:** See models/ folder
- **Frontend Logic:** See script.js
- **Styling:** See style.css
- **Full Docs:** See README.md

---

**Enjoy building! 🎉**
