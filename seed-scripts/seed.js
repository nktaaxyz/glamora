const{initializeApp, cert} = require("firebase-admin/app");
const{getFirestore} = require("firebase-admin/firestore");
const serviceAccount = require("../serviceAccountKey.json");

initializeApp({
    credential: cert(serviceAccount),
});

const db= getFirestore();

async function seedServices() {
    const services= [
        {name:"Potong Rambut", description: "Potong rambut basic + cuci", price: 50000, duration: 30, image:"https://via.placeholder.com/300"},
        {name:"Creambath", description: "Perawatan rambut & Pijat kepala", price: 100000, duration: 60, image:"https://via.placeholder.com/300"},
         {name:"Facial", description: "Perawatan wajah dasar", price: 80000, duration: 45, image:"https://via.placeholder.com/300"},
    ];
    for(const service of services){
        await db.collection("services").add(service);
        console.log('Added service: ${service.name}');
    }
    
}
 async function seedStylists() {
    const stylists= [
        {name:"Kak Rina", specialization: "Hair Specialist",  image:"https://via.placeholder.com/300"},
        {name:"Kak Budi", specialization: "Colorong Expert",  image:"https://via.placeholder.com/300"},
    ];
    for(const stylist of stylists){
        await db.collection("stylists").add(stylist);
        console.log('Added stylist: ${stylist.name}');
    }
    
}

async function seedAdmin() {
    await db.collection("users").doc("Admin001").set({
        name:"Admin Glamora",
        email:"admin@glamora.com",
        phone:"08123456789",
        role:"admin",
    });
    console.log("Added admin user");
}

async function main() {
    await seedServices();
    await seedStylists();
    await seedAdmin();
    console.log("Seeding selesai!");
    process.exit(0);    
}
main();