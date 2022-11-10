
//does action according to button clicked
void mouseClicked() 
{

  //if the temperature is pressed, change degrees displayed
  if ( (mouseX > sideOffset+btnWidth  && mouseX < sideOffset+btnWidth*3) &&
    (mouseY > topOffset && mouseY < topOffset +btnHeight)) {

    displayTempInF = !displayTempInF;
  }

  for (int i=0; i < 19; i++) { 

    //change the toggled state of the button when clicked
    if ( (mouseX > buttons[i].x && mouseX <buttons[i].x+buttons[i].w ) &&
      (mouseY > buttons[i].y && mouseY < buttons[i].y+buttons[i].h)) {


      lastClicked = i;

      //if trying to create new account
      if (i==15 && buttons[17].toggled) {
        buttons[17].toggled = false;
        textSize(48);
        textAlign(CENTER);
        text("Success", sideOffset + btnWidth*7 + (btnWidth*.1), canvasHeight - (topOffset+3*btnHeight) + (btnHeight*.45), btnWidth*3, btnHeight);
      } else {
        buttons[i].toggled = !buttons[i].toggled;
      }

      //if the button has an image
      if (buttons[i].hasImage) {
        buttons[i].changeColor();
      }



      //if social media 
      if (buttons[1].toggled) {
        break;
      }
    }//end clicked if
  }//end for



  if (settings_options[0].isClicked(5))
  {
    timer = sign_off;
  }

  if ( (mouseX > 2517) && (mouseX < 2717) && (mouseY > 1321) && (mouseY < 1521) )
  {
    if (!settings_selected)
    {
      settings_selected = true;
    } else
    {
      settings_selected = false;
      index = 0; //resets the names for the options

      for (Option opt : settings_options)
        opt.setOptionClicked(false, 0);
    }
  }

  else if ( (mouseX > 2172) && (mouseX < 2712) )
  {
    if ((mouseY > 856) && (mouseY < 946))
    {
      //println("you clicked News.");

      switch(index)
      {
      case 0:
        settings_options[0].setOptionClicked(true, index);
        index = 1;
        break;

      case 1:
        if (news.size() < 4 && !settings_options[0].isNewsClicked()) 
        {
          settings_options[0].setNewsClicked(true);
          settings_options[0].setNewsColor(black);
          news.add(settings_options[0].getOptionName(index));
          println(news.get(0));
        } else
        {
          settings_options[0].setNewsClicked(false);
          settings_options[0].setNewsColor(gray_dark);
          news.remove(settings_options[0].getOptionName(index));
        }
        break;

      case 2:
        if (socials.size() < 4 && !settings_options[0].isSocialClicked()) 
        {
          settings_options[0].setSocialClicked(true);
          settings_options[0].setSocialColor(black);
          socials.add(settings_options[0].getOptionName(index));
        } else
        {
          settings_options[0].setSocialClicked(false);
          settings_options[0].setSocialColor(gray_dark);
          socials.remove(settings_options[0].getOptionName(index));
        }
        break;

      case 3:
        settings_options[0].setLanguageColor(0);
        resetSettingsMenu();
        break;

      case 4:
        settings_options[0].setOptionClicked(true, 4);
        break;

      case 5:
        settings_options[0].setOptionClicked(true, 5);
        settings_options[0].setEnabledColor(black);
        settings_options[1].setEnabledColor(gray_dark);
      }
    } else if ((mouseY > 946) && (mouseY < 1036))
    {
      //println("you clicked Social Medias.");

      switch(index)
      {
      case 0:
        settings_options[1].setOptionClicked(true, index);
        index = 2;
        break;

      case 1: 
        if (!settings_options[1].isNewsClicked()) 
        {
          settings_options[1].setNewsClicked(true);
          settings_options[1].setNewsColor(black);
          news.add(settings_options[1].getOptionName(index));
        } else
        {
          settings_options[1].setNewsClicked(false);
          settings_options[1].setNewsColor(gray_dark);
          news.remove(settings_options[1].getOptionName(index));
        }
        break;

      case 2:
        if (socials.size() < 4 && !settings_options[1].isSocialClicked()) 
        {
          settings_options[1].setSocialClicked(true);
          settings_options[1].setSocialColor(black);
          socials.add(settings_options[1].getOptionName(index));
        } else
        {
          settings_options[1].setSocialClicked(false);
          settings_options[1].setSocialColor(gray_dark);
          socials.remove(settings_options[1].getOptionName(index));
        }
        break;

      case 3:
        settings_options[1].setLanguageColor(1);
        resetSettingsMenu();
        break;

      case 4:
        settings_options[1].setOptionClicked(true, 4);
        break;

      case 5:
        settings_options[1].setOptionClicked(true, 5);
        settings_options[1].setEnabledColor(black);
        settings_options[0].setEnabledColor(gray_dark);
        break;
      }
    } else if ((mouseY > 1036) && (mouseY < 1126))
    {
      //println("you clicked Languages.");
      switch(index)
      {
      case 0:
        if (!settings_options[2].numpadOpen())
        {
          settings_options[2].setOptionClicked(true, index);
          index = 3;
        }
        break;

      case 1:
        if (news.size() < 4 && !settings_options[2].isNewsClicked()) 
        {
          settings_options[2].setNewsClicked(true);
          settings_options[2].setNewsColor(black);
          news.add(settings_options[2].getOptionName(index));
        } else
        {
          settings_options[2].setNewsClicked(false);
          settings_options[2].setNewsColor(gray_dark);
          news.remove(settings_options[2].getOptionName(index));
        }
        break;

      case 2:
        if (socials.size() < 4 && !settings_options[2].isSocialClicked()) 
        {
          settings_options[2].setSocialClicked(true);
          settings_options[2].setSocialColor(black);
          socials.add(settings_options[2].getOptionName(index));
        } else
        {
          settings_options[2].setSocialClicked(false);
          settings_options[2].setSocialColor(gray_dark);
          socials.remove(settings_options[2].getOptionName(index));
        }
        break;

      case 3:
        settings_options[2].setLanguageColor(2);
        resetSettingsMenu();
        break;

      case 4:
        settings_options[2].setOptionClicked(true, 4);
        index = 0;
        break;

      case 5:
        settings_options[2].setOptionClicked(true, 5);
        break;
      }
    } else if ((mouseY > 1126) && (mouseY < 1216))
    {
      //println("you clicked Set Date/Time.");
      switch(index)
      {
      case 0:
        break;

      case 1:
        if (news.size() < 4 && !settings_options[3].isNewsClicked()) 
        {
          settings_options[3].setNewsClicked(true);
          settings_options[3].setNewsColor(black);
          news.add(settings_options[3].getOptionName(index));
        } else
        {
          settings_options[3].setNewsClicked(false);
          settings_options[3].setNewsColor(gray_dark);
          news.remove(settings_options[3].getOptionName(index));
        }
        break;

      case 2:
        if (socials.size() < 4 && !settings_options[3].isSocialClicked()) 
        {
          settings_options[3].setSocialClicked(true);
          settings_options[3].setSocialColor(black);
          socials.add(settings_options[3].getOptionName(index));
        } else
        {
          settings_options[3].setSocialClicked(false);
          settings_options[3].setSocialColor(gray_dark);
          socials.remove(settings_options[3].getOptionName(index));
        }
        break;

      case 3:
        settings_options[3].setLanguageColor(3);
        resetSettingsMenu();
        break;
      }
    } else if ((mouseY > 1216) && (mouseY < 1306))
    {
      //println("you clicked Auto Sign-Off.");
      switch(index)
      {
      case 0:
        settings_options[4].setOptionClicked(true, index);
        index = 5;
        break;

      case 1:
        settings_options[4].setOptionClicked(true, 1);
        index = 0;
        break;

      case 2:
        settings_options[4].setOptionClicked(true, 2);
        index = 0;
        break;

      case 3:
        settings_options[4].setLanguageColor(4);
        resetSettingsMenu();
        break;

      case 5:
        settings_options[4].setOptionClicked(true, 5);
        index = 0;
        break;
      }
    }//end auto sign-off
  }


  else if ( (sq(mouseX-1100) + sq(mouseY-1000)) < sq(radius) ) // if "1" clicked
  { 
    //println("You hit 1.");
    if (settings_options[0].isClicked(4))
      date = addToDate(date, "1");
    else if (settings_options[1].isClicked(4))
      time = addToTime(time, "1");
    else if (settings_options[2].isClicked(5))
      sign_off = addToTime(sign_off, "1");
  } else if ( (sq(mouseX-1330) + sq(mouseY-1000)) < sq(radius) )  // if "2" clicked
  {
    //println("You hit 2.");
    if (settings_options[0].isClicked(4))
      date = addToDate(date, "2");
    else if (settings_options[1].isClicked(4))
      time = addToTime(time, "2");
    else if (settings_options[2].isClicked(5))
      sign_off = addToTime(sign_off, "2");
  } else if ( (sq(mouseX-1560) + sq(mouseY-1000)) < sq(radius)) // if "3" clicked
  {
    //println("You hit 3.");
    if (settings_options[0].isClicked(4))
      date = addToDate(date, "3");
    else if (settings_options[1].isClicked(4))
      time = addToTime(time, "3");
    else if (settings_options[2].isClicked(5))
      sign_off = addToTime(sign_off, "3");
  } else if ( (sq(mouseX-1100) + sq(mouseY-800)) < sq(radius)) // if "4" clicked
  {
    //println("You hit 4.");
    if (settings_options[0].isClicked(4))
      date = addToDate(date, "4");
    else if (settings_options[1].isClicked(4))
      time = addToTime(time, "4");
    else if (settings_options[2].isClicked(5))
      sign_off = addToTime(sign_off, "4");
  } else if ( (sq(mouseX-1330) + sq(mouseY-800)) < sq(radius)) // if "5" clicked
  {
    //println("You hit 5.");
    if (settings_options[0].isClicked(4))
      date = addToDate(date, "5");
    else if (settings_options[1].isClicked(4))
      time = addToTime(time, "5");
    else if (settings_options[2].isClicked(5))
      sign_off = addToTime(sign_off, "5");
  } else if ( (sq(mouseX-1560) + sq(mouseY-800)) < sq(radius) ) // if "6" clicked
  {
    //println("You hit 6."); 
    if (settings_options[0].isClicked(4))
      date = addToDate(date, "6");
    else if (settings_options[1].isClicked(4))
      time = addToTime(time, "6");
    else if (settings_options[2].isClicked(5))
      sign_off = addToTime(sign_off, "6");
  } else if ( (sq(mouseX-1100) + sq(mouseY-600)) < sq(radius) ) // if "7" clicked
  {
    //println("You hit 7.");
    if (settings_options[0].isClicked(4))
      date = addToDate(date, "7");
    else if (settings_options[1].isClicked(4))
      time = addToTime(time, "7");
    else if (settings_options[2].isClicked(5))
      sign_off = addToTime(sign_off, "7");
  } else if ( (sq(mouseX-1330) + sq(mouseY-600)) < sq(radius)) // if "8" clicked
  {
    //println("You hit 8.");
    if (settings_options[0].isClicked(4))
      date = addToDate(date, "8");
    else if (settings_options[1].isClicked(4))
      time = addToTime(time, "8");
    else if (settings_options[2].isClicked(5))
      sign_off = addToTime(sign_off, "8");
  } else if ( (sq(mouseX-1560) + sq(mouseY-600)) < sq(radius)) // if "9" clicked
  {
    //println("You hit 9.");
    if (settings_options[0].isClicked(4))
      date = addToDate(date, "9");
    else if (settings_options[1].isClicked(4))
      time = addToTime(time, "9");
    else if (settings_options[2].isClicked(5))
      sign_off = addToTime(sign_off, "9");
  } else if ( (sq(mouseX-1330) + sq(mouseY-1200)) < sq(radius)) // if "0" clicked
  {
    //println("You hit 0.");
    if (settings_options[0].isClicked(4))
      date = addToDate(date, "0");
    else if (settings_options[1].isClicked(4))
      time = addToTime(time, "0");
    else if (settings_options[2].isClicked(5))
      sign_off = addToTime(sign_off, "0");
  } else if ( (mouseX > 1000) && (mouseX < 1210) && (mouseY > 1130) & (mouseY < 1280)) // if "Clear" clicked
  {
    //println("You hit Clear.");
    if (settings_options[0].isClicked(4))
    {
      date = "";
    } else if (settings_options[1].isClicked(4))
    {
      time = "";
    } else if (settings_options[2].isClicked(5))
    {
      sign_off = "";
    }
  } else if ( (mouseX > 1460) && (mouseX < 1680) && (mouseY > 1130) & (mouseY < 1280)) // if "Done" clicked
  {
    //println("You hit Done.");
    if (settings_options[0].isClicked(4))
    {
      if (date.substring(0, 1).equals("0"))
        date = date.substring(1);

      settings_options[0].setOptionClicked(false, 4);
    } else if (settings_options[1].isClicked(4))
    {
      if (time.substring(0, 1).equals("0"))
        time = time.substring(1);

      settings_options[1].setOptionClicked(false, 4);
    } else if (settings_options[2].isClicked(5))
    { 
      timer = sign_off;
      settings_options[3].setOptionName(sign_off);
      settings_options[2].setOptionClicked(false, 5);
    }
  }
}
