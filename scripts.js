const hamburger = document.querySelector('.header .nav-bar .nav-list .hamburger');
const mobile_menu = document.querySelector('.header .nav-bar .nav-list ul');
const menu_item = document.querySelectorAll('.header .nav-bar .nav-list ul li a');
const header = document.querySelector('.header.container');

hamburger.addEventListener('click', () => {
	hamburger.classList.toggle('active');
	mobile_menu.classList.toggle('active');
});

document.addEventListener('scroll', () => {
	var scroll_position = window.scrollY;
	if (scroll_position > 250) {
		header.style.backgroundColor = '#29323c';
	} else {
		header.style.backgroundColor = 'transparent';
	}
});

menu_item.forEach((item) => {
	item.addEventListener('click', () => {
		hamburger.classList.toggle('active');
		mobile_menu.classList.toggle('active');
	});
});

// JavaScript: Chatbot functionality with if-else statements

const chatbotToggle = document.getElementById('chatbot-toggle');
const chatbotBody = document.getElementById('chatbot-body');
const chatbotInput = document.getElementById('chatbot-input');
const chatbotSend = document.getElementById('chatbot-send');
const chatbotMessages = document.getElementById('chatbot-messages');

chatbotToggle.addEventListener('click', () => {
  chatbotBody.classList.toggle('open');
});

chatbotSend.addEventListener('click', () => {
  const message = chatbotInput.value;
  if (message.trim() !== '') {
    appendMessage('You', message);
    chatbotInput.value = '';
    scrollToBottom();

    setTimeout(() => {
      const response = getChatbotResponse(message);
      appendMessage('Chatbot', response);
      scrollToBottom();
    }, 500);
  }
});

function appendMessage(sender, message) {
  const messageElement = document.createElement('div');
  messageElement.classList.add('chatbot-message');
  messageElement.innerHTML = `<strong>${sender}:</strong> ${message}`;
  chatbotMessages.appendChild(messageElement);
}

function scrollToBottom() {
  chatbotMessages.scrollTop = chatbotMessages.scrollHeight;
}

function getChatbotResponse(userInput) {
  // Add your chatbot logic using if-else statements for different responses
  userInput = userInput.toLowerCase().trim();

  if (userInput.includes('hello') || userInput.includes('hi') || userInput.includes('hai') || userInput.includes('chat')) 
  {
    return "Hello my name is  nimmi! How can I assist you?";
  } 
  else if (userInput.includes('portfolio') || userInput.includes('projects')) {
    return "You can view my portfolio and projects on the Projects page.";

  } 
  else if (userInput.includes('contact') || userInput.includes('email'))
   {
    return "You can contact me through the Contact page.";
  } 
    else if(userInput.includes('about') || userInput.includes('about nithish') || userInput.includes('who are you') || userInput.includes('age') || userInput.includes('nimmi'))
	{
        return "Hello, my name is Nithish. Currently, I'm studying B.Tech in KITSW, in the 3rd year, pursuing the CSE branch. I am 20 years old, and my hobbies include playing cricket and kabbadi. In my free time, I enjoy coding. ";
	}
	else if (userInput.includes('number') || userInput.includes('phone'))
	 {
		return "You can contact me through the Contact number 8790986683.";
	  } 
	  else if (userInput.includes('fuck') || userInput.includes('waste fellow')) {
		return "waste fellow ,fuck you too!";
	
	  } 
	  else if (userInput.includes('resume') || userInput.includes('cv')) 
	  {
		return  "resume";
	  } 

	  else if (userInput.includes('frd') || userInput.includes('friends') || userInput.includes('frds') || userInput.includes('bestfrds')  ) 
	  {
		
		return "1) karthik\n2)Rabbit\n3)shivani\n4)rishitha 5)rishi 6)hanith";
	
	
	  } 
	  else if (userInput.includes('bestie') || userInput.includes('psycho')  ) 
	  {
		
		return "Rabbit";
	
	  } 
  
	  else if (userInput.includes('fullname') || userInput.includes('fistname')  ) 
	  {
		
		return "jaligapu nithish";
	
	  } 

	  else if (userInput.includes('college') || userInput.includes('education')  ) 
	  {
		
		return "kitswarangal";
	
	  } 

	  else if (userInput.includes('sorry') || userInput.includes('sry')  ) 
	  {
		
		return "its,okay lyt le..";
	
	  } 

	  else if (userInput.includes('bye') || userInput.includes('goodbye')  ) 
	  {
		
		return "Goodbye! If you have any more questions or need assistance in the future, feel free to come back. Have a great day!";
	
	  } 
	  else if (userInput.includes('skills') || userInput.includes('languages')  ) 
	  {
		
		return "JAVA,PYTHON,HTML,CSS,JAVASCRIPT,REACT";
	
	  } 
	  else if (userInput.includes('services') || userInput.includes('offerings')) 
	  {
		return "Our services include web development, mobile app development, and digital marketing.";
	  } 
	  
	 
	 
	  else if (userInput.includes('how') || userInput.includes('how are you')  ) 
	  {
		
		return "i am fine.what about you?.How can I assist you today?";
	
	  } 
	  
	  else if (userInput.includes('thanks') || userInput.includes('tq')  ) 
	  {
		
		return "You're welcome! If you have any more questions or need further assistance, feel free to ask. Have a great day!";
	
	  } 

	  else if (userInput.includes('crush') || userInput.includes('lover')) 
	  {
		return "Sorry,i don't want to tell you ..!";
	  } 
	  else if (userInput.includes('ok') || userInput.includes('okay')  )
	   {
		return "Hm...okay!";
	  } 

	  else if (userInput.includes('school'))
	   {
		return "Little Flower Schoool";
	  } 
	  else if (userInput.includes('date of birth') || userInput.includes('birthday')) 
	  {
		return "12-09-2003";
	  } 

	else if (userInput.includes('school')) 
		{
		return "Little Flower Schoool";
	  } 

	  else if (userInput.includes('love') || userInput.includes('i like you')  || userInput.includes('love you') )
	  {
	   return "Sorry,i'm already in Love";
	 }
 
  else
   {
    return "I'm sorry, I couldn't understand that. Please try again.";
  }

}

// JavaScript: Code for closing the chatbot container

const chatbotClose = document.getElementById('chatbot-close');

chatbotClose.addEventListener('click', () => {
  chatbotBody.classList.remove('open');
});

// Function to update the viewer count
function updateViewerCount() {
	let countElement = document.getElementById('count');
	let count = parseInt(countElement.innerText);
  
	// Increment the count
	count++;
  
	// Update the count on the webpage
	countElement.innerText = count;
  }
  
  // Call the updateViewerCount function when the webpage is loaded
  window.onload = function() {
	updateViewerCount();
  };
  
