const express = require("express");
const app = express();

app.get("/health", (req, res) => {
  res.json({ status: "OK" });
});
app.get("/", (req, res) => {
  res.json({ message: "app is running" });
});

const PORT = 5000;
app.listen(PORT, () => console.log(`Server running on ${PORT}`));