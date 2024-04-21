List ProductData = [
  {
    "id": 1,
    "name": "Canon EOS 30D",
    "price": 1600,
    "description":
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Facilisis tellus, est lacus arcu ut ac in fermentum. Sit eget proin nunc felis quam rutrum metus. Et lacus, maecenas vel et arcu ut adipiscing morbi eget. At arcu varius ullamcorper eu varius. Et lacus, maecenas vel et arcu ut adipiscing morbi eget.",
    "quantity": 1,
    "link": "assets/image/01.png",
    "fav": false,
    "check": true,
  },
  {
    "id": 2,
    "name": "Nikon D850",
    "price": 3000,
    "description":
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Facilisis tellus, est lacus arcu ut ac in fermentum. Sit eget proin nunc felis quam rutrum metus. Et lacus, maecenas vel et arcu ut adipiscing morbi eget. At arcu varius ullamcorper eu varius. Et lacus, maecenas vel et arcu ut adipiscing morbi eget.",
    "quantity": 1,
    "link": "assets/image/04.png",
    "fav": false,
    "check": true,
  },
  {
    "id": 3,
    "name": "Sony Alpha",
    "price": 25000,
    "description":
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Facilisis tellus, est lacus arcu ut ac in fermentum. Sit eget proin nunc felis quam rutrum metus. Et lacus, maecenas vel et arcu ut adipiscing morbi eget. At arcu varius ullamcorper eu varius. Et lacus, maecenas vel et arcu ut adipiscing morbi eget.",
    "quantity": 1,
    "link": "assets/image/09.png",
    "fav": false,
    "check": true,
  },
  {
    "id": 4,
    "name": "Nikon Alpha",
    "price": 2000,
    "description":
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Facilisis tellus, est lacus arcu ut ac in fermentum. Sit eget proin nunc felis quam rutrum metus. Et lacus, maecenas vel et arcu ut adipiscing morbi eget. At arcu varius ullamcorper eu varius. Et lacus, maecenas vel et arcu ut adipiscing morbi eget.",
    "quantity": 1,
    "link": "assets/image/05.png",
    "fav": false,
    "check": true,
  },
  {
    "id": 5,
    "name": "Canon EOS R5",
    "price": 3500,
    "description":
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Facilisis tellus, est lacus arcu ut ac in fermentum. Sit eget proin nunc felis quam rutrum metus. Et lacus, maecenas vel et arcu ut adipiscing morbi eget. At arcu varius ullamcorper eu varius. Et lacus, maecenas vel et arcu ut adipiscing morbi eget.",
    "quantity": 1,
    "link": "assets/image/07.png",
    "fav": false,
    "check": true,
  },
  {
    "id": 6,
    "name": "Nikon D850",
    "price": 3500,
    "description":
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Facilisis tellus, est lacus arcu ut ac in fermentum. Sit eget proin nunc felis quam rutrum metus. Et lacus, maecenas vel et arcu ut adipiscing morbi eget. At arcu varius ullamcorper eu varius. Et lacus, maecenas vel et arcu ut adipiscing morbi eget.",
    "quantity": 1,
    "link": "assets/image/02.png",
    "fav": false,
    "check": true,
  },
];

List AddToCard = [];
List UnLikedList = List.generate(ProductData.length, (index) => false);
List likedProductList = [];
