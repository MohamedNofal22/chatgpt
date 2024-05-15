import '../core/app_export.dart';

class AppLocalization extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {'en_US': enUs};
}

final Map<String, String> enUs = {
  // App Screen
  "chatgpt": "ChatGPT",

  // Welcome Screen One Screen
  "examples": "Examples",
  "explain_quantum": "“Explain quantum computing in simple terms”",
  "got_any_creative": "“Got any creative ideas for a 10 year old’s birthday?”",
  "how_do_i_make_an": "“How do I make an HTTP request in Javascript?”",

  // Welcome Screen Two Screen \
  "capabilities": "Capabilities",
  "allows_user_to_provide": "Allows user to provide follow-up corrections",
  "remembers_what_user": "Remembers what user said earlier in the conversation",
  "trained_to_decline": "Trained to decline inappropriate requests",

  // Welcome Screen Three Screen
  "let_s_chat": "Let’s Chat",

  "limitations": "Limitations",
  "limited_knowledge": "Limited knowledge of world and events after 2021",
  "may_occasionally": "May occasionally generate incorrect information",
  "may_occasionally2":
      "May occasionally produce harmful instructions or biased content",

  // Get an answer Screen
  "copy": "Copy",
  "regenerate_response": "Regenerate response",
  "the_sky_appears":
      "The sky appears blue because of the scattering of sunlight by Earth's atmosphere. As sunlight enters the atmosphere, it encounters tiny molecules of gas and other particles in the air.��These particles scatter the light in all directions. However, blue light is scattered more than other colors because it travels in smaller, shorter waves. This is known as Rayleigh scattering.",

  // Common String
  "back": "Back",
  "light_mode": "Light mode",
  "logout": "Logout",
  "new": "NEW",
  "new_chat": "New Chat",
  "next": "Next",
  "updates_faq": "Updates & FAQ",
  "upgrade_to_plus": "Upgrade to Plus",
  "ask_anything_get": "Ask anything, get yout answer",
  "clear_conversations": "Clear conversations",
  "welcome_to_chatgpt": "Welcome to\nChatGPT",
  "why_is_the_sky_blue": "Why is the sky blue ?",

  // App navigation Screen
  "app": "App",
  "app_navigation": "App Navigation",
  "ask_a_question": "Ask a question",
  "buffer": "Buffer",
  "dashboard": "Dashboard",
  "dashboard_one": "Dashboard One",
  "get_an_answer": "Get an answer",
  "check_your_app_s":
      "Check your app's UI from the below demo screens of your app.",
  "empty_conversation": "Empty conversation",
  "start_a_conversation": "Start a conversation",
  "welcome_screen_one": "Welcome Screen One",
  "welcome_screen_three": "Welcome Screen Three",
  "welcome_screen_two": "Welcome Screen Two",

  // Network Error String
  "network_err": "Network Error",
  "something_went_wrong": "Something Went Wrong!",
};
