
class Home < SitePrism::Page
    include RSpec::Matchers
    include Capybara::DSL

    element :title_Aprenda_Na_Pratica, 'div[class="title"]'
    element :btn_Sobre_Nos, 'a[href="/#sobre-nos"]'
    element :btn_Depoimentos, 'a[href="/#depoimentos"]'
    element :btn_Parceiros, 'a[href="/#parceiros"]'
    element :btn_Fale_Conosco, 'a[href="/#fale-conosco"]'

    set_url '/'

    
    
    # def validate_text_homePage(titleHomePage)
    #     el_title_HomePage = find('div[class="title"]')
      
    #     if el_title_HomePage.text.eql?(titleHomePage) != true
    #         raise "Expect element: #{titleHomePage}, but returned: #{el_title_HomePage.text}"
    #     end
    # end

    def click_button(sobre_nos)
        btn_Sobre_Nos.click()

    end 

    def click_button(depoimentos)
        btn_Sobre_Nos.click()

    end 

    def validate_text_home(text_home_feature)
          
      if text_home_feature == "Aprenda na prática."
        el_title_HomePage = find('div[class="title"]')
      
        if el_title_HomePage.text.eql?(text_home_feature) != true
            raise "Expect element: #{text_home_feature}, but returned: #{el_title_HomePage.text}"

        end
    
    elsif
        
    el_title_HomePage = find('a[href="/#sobre-nos"]')
        
    if el_title_HomePage.text.eql?(text_home_feature) != true
            reise "Expect element: #{text_home_feature}, but returned: #{el_title_HomePage.text}"

        end
       
        end
   end

end