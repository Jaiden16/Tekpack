import * as firebase from 'firebase'
import config from './config'
// require('dotenv').config()
// import dotenv from 'dotenv'
// import './env'

// dotenv.config()

// console.log(process.env)
// console.log(process.env.NODE_ENV)

// const config = {
//     apiKey: process.env.APIKEY,
//     authDomain: process.env.AUTH_DOMAIN,
//     databaseURL: process.env.DATABASE_URL,
//     projectId: process.env.PROJECT_ID,
//     storageBucket: process.env.STORAGE_BUCKET,
//     messagingSenderId: process.env.MESSAGING_SENDER_ID,
//     appId: process.env.APP_ID,
//     measurementId: process.env.MEASUREMENT_ID
// }

// console.log(config)

firebase.initializeApp(config)

const storage = firebase.storage()

export {
    storage,
    firebase as default
}

