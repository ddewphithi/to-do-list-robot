*** Variables ***

${label_titlePage}    //h1[normalize-space()="To Do List"]

# Add Item
${a_addItem}    //a[@href="#add-item"]
${txt_addItem}    //input[@id='new-task']
${btn_addItem}    //button/i[normalize-space()="add"]

# TO-DO Tasks
${a_toDoTask}    //a[@href="#todo"]
${label_itemToDo}    //div[@id="todo"]//span[contains(@id, "text-")]
${chk_toDo}    //div[@id="todo"]//li[$row]/label[contains(@class, "mdl-checkbox")]
${btn_deleteItem_toDO}    //div[@id="todo"]//li[$row]/button[contains(@class,"delete")]
${label_incomplatedTask}    //ul[@id="incomplete-task"]/li

# Completed
${a_complated}    //a[@href="#completed"]
${label_itemCompleted}    //div[@id="completed"]//span[contains(@id, "text-")]
${btn_deleteItem_completed}    //div[@id="completed"]//li[$row]/button[contains(@class,"delete")]
