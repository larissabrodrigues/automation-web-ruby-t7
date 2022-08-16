class Home < SitePrism::Page
    include RSpec::Matchers
    include Capybara::DSL

    element :title_Aprenda_Na_Pratica, 'div[class="title"]'
    element :btn_Sobre_Nos, 'a[href="/#sobre-nos"]'
    element :btn_Depoimentos, 'a[href="/#depoimentos"]'
    element :btn_Parceiros, 'a[href="/#parceiros"]'
    element :btn_Fale_Conosco, 'a[href="/#faleConosco"]'

    set_url '/'
    

    def click_button(menu)
        if menu == "Sobre nós"
            btn_Sobre_Nos.click()
        elsif menu == "Depoimentos"
            btn_Depoimentos.click()
        elsif menu == "Parceiros"
            btn_Parceiros.click()
        elsif menu == "Fale Conosco"
            btn_Fale_Conosco.click()
        end
    end 

    def validate_text_home(text_home_feature)
          
        if text_home_feature == "Aprenda na prática."
            el_title_HomePage = find('div[class="title"]')
      
            if el_title_HomePage.text.eql?(text_home_feature) != true
                raise "Expect element: #{text_home_feature}, but returned: #{el_title_HomePage.text}"

            end
    
        elsif text_home_feature == "Sobre nós"        
            el_title_HomePage = find('a[href="/#sobre-nos"]')
        
            if el_title_HomePage.text.eql?(text_home_feature) != true
                reise "Expect element: #{text_home_feature}, but returned: #{el_title_HomePage.text}"
            end

        elsif text_home_feature == "Depoimentos" 
            el_title_HomePage = find('a[href="/#depoimentos"]')
            
            if el_title_HomePage.text.eql?(text_home_feature) != true
                reise "Expect element: #{text_home_feature}, but returned: #{el_title_HomePage.text}"
    
            end
        
        elsif text_home_feature == "Parceiros" 
            el_title_HomePage = find('a[href="/#parceiros"]')
            
            if el_title_HomePage.text.eql?(text_home_feature) != true
                reise "Expect element: #{text_home_feature}, but returned: #{el_title_HomePage.text}"
    
            end

        elsif text_home_feature == "Fale Conosco" 
            el_title_HomePage = find('a[href="/#faleConosco"]')
            
            if el_title_HomePage.text.eql?(text_home_feature) != true
                reise "Expect element: #{text_home_feature}, but returned: #{el_title_HomePage.text}"
    
            end
                           
        end
    end
end