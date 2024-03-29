import { URL } from '../../lib/constants';

export default function handler(req, res) {
    // This data could be fetched from a database in a real application
    const menuItems = [
      { id: 1, name: 'Pizza Margherita', price: 10 },
      { id: 2, name: 'Pasta Carbonara', price: 12 },
      // Add more items...
    ];
  
    res.status(200).json({ items: menuItems });
  }
  
export async function fetchData(endpoint) {
// Fetch data from an API or database
// const response = await fetch('http://localhost:8080/'+endpoint);
// const response = await fetch('http://10.0.0.2:8080/'+endpoint);
const response = await fetch(URL+endpoint);
const data = await response.json();
return data;
}