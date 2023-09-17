var createError = require('http-errors');
var express = require('express');
var path = require('path');
var logger = require('morgan');

//for session
var cookieParser = require('cookie-parser');
var session = require('express-session');

// var indexRouter = require("./src/routes/index");
//안쓰는것같은데?
var usersRouter = require('./src/routes/users');

var logoutRouter = require('./src/routes/logout');
var loginRouter = require('./src/routes/login');
var registerRouter = require('./src/routes/register');

var restuserRouter = require('./src/routes/restuser');
var restusermenuRouter = require('./src/routes/restuser_menu');

var restLoginRouter = require('./src/routes/restlogin');
var restRegisterRouter = require('./src/routes/restregister');

var mainRouter = require('./src/routes/main');
var menuRouter = require('./src/routes/menu');
var menuDetailRouter = require('./src/routes/menuDetail');
var menuEditRouter = require('./src/routes/menuedit');

var useralgRouter = require('./src/routes/useralg');

var confirmRouter = require('./src/routes/confirm');

var app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'pug');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(express.static(path.join(__dirname, 'public')));

//for session middleware
app.use(cookieParser());
app.use(
  session({
    secret: 'sessionkey_mustchanged',
    resave: false,
    saveUninitialized: false,
  }),
);

// app.use("/", indexRouter);
// 이거 뭔가안쓰는것같은데?
app.use('/api/users', usersRouter);

//auth
app.use('/api/logout', logoutRouter);
app.use('/api/login', loginRouter);
app.use('/api/signup', registerRouter);

app.use('/api/restuser', restuserRouter);
app.use('/api/restuser_menu', restusermenuRouter);

app.use('/api/restlogin', restLoginRouter);
app.use('/api/restsignup', restRegisterRouter);

app.use('/api/main', mainRouter);
app.use('/api/menu', menuRouter);
app.use('/api/useralg', useralgRouter);
app.use('/api/menuDetail', menuDetailRouter);
app.use('/api/menuedit', menuEditRouter);

app.use('/api/confirm', confirmRouter);

// catch 404 and forward to error handler
app.use(function (req, res, next) {
  next(createError(404));
});

// error handler
app.use(function (err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
