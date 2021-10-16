import axios from 'axios'

const token = document.querySelector('meta[name="csrf-token"]') || {content: 'no-csrf-token'}
console.log("TOKEN")
console.log(token)
const AxiosWrapper = axios.create({
  headers: {
    common: {
      'X-CSRF-Token': token.content
    }
  }
})

export default AxiosWrapper