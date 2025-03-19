// Array to store tasks
let tasks = [];

// Function to add task
function addTask(task) {
  tasks.push({ task: task, completed: false });
  console.log(`Task added: ${task}`);
  displayTasks();
}

// Function to remove task
function removeTask(index) {
  tasks.splice(index, 1);
  console.log(`Task removed at index ${index}`);
  displayTasks();
}

// Function to mark task as completed
function completeTask(index) {
  tasks[index].completed = true;
  console.log(`Task completed at index ${index}`);
  displayTasks();
}

// Function to display tasks
function displayTasks() {
  console.log("Tasks:");
  tasks.forEach((task, index) => {
    console.log(`${index}: ${task.task} (${task.completed ? "Completed" : "Pending"})`);
  });
}

// Test the program
addTask("Buy milk");
addTask("Walk the dog");
completeTask(0);
removeTask(1);
displayTasks();
