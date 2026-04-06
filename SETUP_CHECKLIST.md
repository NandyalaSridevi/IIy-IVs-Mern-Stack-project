# ✅ Setup Verification Checklist

Complete this checklist to ensure your CraveKart project is set up correctly.

---

## 📋 Prerequisites

- [ ] Node.js v14 or higher installed
  ```bash
  node --version
  ```

- [ ] npm installed
  ```bash
  npm --version
  ```

- [ ] MongoDB installed locally
  ```bash
  mongod --version
  ```

- [ ] Python 3 installed (for serving frontend)
  ```bash
  python --version
  ```

---

## 🔧 Backend Setup

- [ ] Navigate to FoodBackend folder
  ```bash
  cd FoodBackend
  ```

- [ ] Install all dependencies
  ```bash
  npm install
  ```

- [ ] Verify package.json has these dependencies:
  - Socket.io ✓
  - Express ✓
  - Mongoose ✓
  - CORS ✓
  - Dotenv ✓
  - Bcryptjs ✓
  - JWT ✓

- [ ] Verify all model files exist:
  - [ ] models/User.js
  - [ ] models/UpdatedUser.js
  - [ ] models/Restaurant.js
  - [ ] models/MenuItem.js
  - [ ] models/Order.js

- [ ] Verify all route files exist:
  - [ ] routes/restaurants.js
  - [ ] routes/menuItems.js
  - [ ] routes/orders.js

- [ ] Start MongoDB service
  ```bash
  mongod
  ```
  (Should show: waiting for connections on port 27017)

- [ ] Start backend server
  ```bash
  npm start
  ```
  (Should show: ✓ MongoDB Connected)
  (Should show: 🚀 Server running on port 5000)

- [ ] Test backend is running
  ```bash
  curl http://localhost:5000
  ```
  (Should respond with: 🍕 Food Ordering Backend Running)

---

## 🎨 Frontend Setup

- [ ] Navigate to FoodFrontend folder
  ```bash
  cd FoodFrontend
  ```

- [ ] Verify all HTML files exist:
  - [ ] index.html (home page)
  - [ ] restaurant.html (menu page)
  - [ ] cart.html (checkout)
  - [ ] track.html (order tracking)
  - [ ] login.html
  - [ ] register.html
  - [ ] admin.html
  - [ ] menu.html
  - [ ] style.css
  - [ ] script.js

- [ ] Start local web server
  ```bash
  python -m http.server 8000
  ```
  (Should show: Serving HTTP on port 8000)

---

## 🌐 Browser Testing

- [ ] Open http://localhost:8000 in browser

- [ ] Home page should display:
  - [ ] Navigation bar with logo "🍔 CraveKart"
  - [ ] Search bar
  - [ ] Login/Sign up buttons
  - [ ] Hero section with gradient
  - [ ] Restaurant grid (with demo data)
  - [ ] Footer

- [ ] Click on a restaurant:
  - [ ] Should navigate to restaurant.html
  - [ ] Should show restaurant details
  - [ ] Should show menu items with prices
  - [ ] Should see "Add to Cart" buttons

- [ ] Add item to cart:
  - [ ] Item quantity should increase
  - [ ] Shopping cart icon should show badge
  - [ ] Notification should appear

- [ ] Navigate to cart:
  - [ ] Should show items added
  - [ ] Should show total price
  - [ ] Should show "Proceed to Checkout" button

- [ ] Click checkout:
  - [ ] Should go to cart.html
  - [ ] Should show delivery form
  - [ ] Should show payment options
  - [ ] Should show order summary

- [ ] Place order:
  - [ ] Should show success modal
  - [ ] Should get an Order ID
  - [ ] Should have "Track Order" button

- [ ] Click track order:
  - [ ] Should go to track.html
  - [ ] Should show order status timeline
  - [ ] Should show order details
  - [ ] Should show delivery partner info

---

## 🔑 Authentication Testing

- [ ] Go to http://localhost:8000/login.html
  - [ ] Login form should display (includes dropdown to choose Customer/Restaurant/Admin)
  - [ ] Email and password fields should be present

- [ ] Go to http://localhost:8000/register.html
  - [ ] Registration form should display
  - [ ] Name, email, phone, password fields should be present

- [ ] Test registration:
  - [ ] Fill in all fields
  - [ ] Click "Create Account"
  - [ ] Should redirect to home page
  - [ ] User profile button should show name

- [ ] Test login:
  - [ ] Choose each role and verify redirection
  - [ ] Use registered credentials
  - [ ] Should successfully login
  - [ ] Should redirect to home page
  - [ ] User profile should show user info

---

## 📊 Admin Dashboard Testing

- [ ] Go to http://localhost:8000/admin.html (after login)
  - [ ] Should show sidebar menu
  - [ ] Dashboard tab should display:
    - [ ] Today's Orders stat card
    - [ ] Today's Revenue stat card
    - [ ] Average Rating stat card
    - [ ] Active Orders stat card
    - [ ] Recent Orders table

- [ ] Click "Orders" tab:
  - [ ] Should show orders list

- [ ] Click "Menu" tab:
  - [ ] Should show menu items
  - [ ] Should have "Add New Item" button

- [ ] Click "Logout":
  - [ ] Should return to home page
  - [ ] User should be logged out

---

## 🔌 API Testing

### Test Restaurants API
```bash
curl http://localhost:5000/api/restaurants/all
```
Expected: JSON array of restaurants (or empty [])

### Test Register API
```bash
curl -X POST http://localhost:5000/api/register \
  -H "Content-Type: application/json" \
  -d '{"name":"Test User","email":"test@example.com","phone":"1234567890","password":"password123"}'
```
Expected: Success message with user data

### Test Login API
```bash
curl -X POST http://localhost:5000/api/login \
  -H "Content-Type: application/json" \
  -d '{"email":"test@example.com","password":"password123"}'
```
Expected: Success message with user object

---

## 🎨 UI/UX Verification

- [ ] Colors look correct (Primary red: #ef4f5f)
- [ ] All text is readable
- [ ] Buttons have hover effects
- [ ] Forms have proper spacing
- [ ] Mobile view is responsive
- [ ] No console errors (Press F12 to check)
- [ ] Animations are smooth
- [ ] Notifications show correctly

---

## ⚡ Performance Check

- [ ] Page loads within 2 seconds
- [ ] No broken images
- [ ] No console warnings
- [ ] Smooth scrolling
- [ ] Responsive to clicks
- [ ] No lag on cart updates

---

## 🔍 Common Issues & Fixes

### Issue: MongoDB Connection Failed
**Solution:**
```bash
mongod
```
Keep MongoDB running in a separate terminal

### Issue: Port 5000 Already in Use
**Solution:**
- Windows: `netstat -ano | findstr :5000`
- Mac/Linux: `lsof -i :5000`
- Kill the process and restart

### Issue: Frontend shows "Cannot GET /"
**Solution:**
- Ensure you started web server: `python -m http.server 8000`
- Navigate to correct URL: http://localhost:8000

### Issue: "Failed to load API"
**Solution:**
- Check backend is running on port 5000
- Check browser console errors (F12)
- Verify API endpoint in script.js

### Issue: Styles not loading
**Solution:**
- Hard refresh: Ctrl+Shift+Del (Chrome)
- Clear cache manually
- Check style.css path in HTML

### Issue: Cart not updating
**Solution:**
- Check localStorage permissions
- Check browser console for JS errors
- Try in incognito mode

---

## 📝 Documentation Review

- [ ] README.md - Complete project documentation
- [ ] QUICKSTART.md - Quick start guide
- [ ] PROJECT_SUMMARY.md - Feature overview
- [ ] This checklist - Setup verification

---

## 🎯 Next Steps After Setup

1. **Add Demo Data:**
   - Create restaurants via API
   - Add menu items
   - Create sample orders

2. **Customize:**
   - Update restaurant details
   - Change colors if desired
   - Add your branding

3. **Test Features:**
   - Complete order flow
   - Admin dashboard
   - Real-time updates

4. **Deploy (Optional):**
   - Backend to Heroku/AWS
   - Frontend to Netlify/Vercel
   - Database to MongoDB Atlas

---

## ✅ Final Verification

- [ ] Backend running on http://localhost:5000 ✓
- [ ] Frontend running on http://localhost:8000 ✓
- [ ] MongoDB connected ✓
- [ ] Home page displays ✓
- [ ] Can navigate to restaurant ✓
- [ ] Can add items to cart ✓
- [ ] Can place order ✓
- [ ] Can track order ✓
- [ ] Can login/register and select account type ✓
- [ ] Can access admin dashboard ✓
- [ ] No console errors ✓
- [ ] UI looks modern and clean ✓

---

## 🎉 SUCCESS!

If all checkboxes are ticked, your CraveKart project is **fully set up and ready to use!**

**Start exploring and building! 🚀**

---

## 📞 Need Help?

1. Check the browser console for errors (F12)
2. Check the backend terminal for server logs
3. Read the README.md for detailed documentation
4. Review QUICKSTART.md for common issues
5. Check PROJECT_SUMMARY.md for feature details

---

**Last updated:** March 2, 2026
**Project:** CraveKart - Real-time Food Delivery Platform
**Status:** ✅ Production Ready
