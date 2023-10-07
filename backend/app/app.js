let createError = require('http-errors');
let express = require('express');
let path = require('path');
let logger = require('morgan');

// 환경변수용
const dotenv = require('dotenv');

//for env
dotenv.config();

//for session
let cookieParser = require('cookie-parser');
let session = require('express-session');

// let indexRouter = require("./src/routes/index");
//안쓰는것같은데?
let usersRouter = require('./src/routes/users');
let usernameRouter = require('./src/routes/username');

let logoutRouter = require('./src/routes/logout');
let loginRouter = require('./src/routes/login');
let registerRouter = require('./src/routes/register');

let restuserRouter = require('./src/routes/restuser');
let restusermenuRouter = require('./src/routes/restuser_menu');

let restLoginRouter = require('./src/routes/restlogin');
let restRegisterRouter = require('./src/routes/restregister');

let mainRouter = require('./src/routes/main');
let menuRouter = require('./src/routes/menu');
let menuDetailRouter = require('./src/routes/menuDetail');
let menuEditRouter = require('./src/routes/menuedit');

let useralgRouter = require('./src/routes/useralg');

let confirmRouter = require('./src/routes/confirm');

let app = express();

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
app.use('/api/username', usernameRouter);

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
