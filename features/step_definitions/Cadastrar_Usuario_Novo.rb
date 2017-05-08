Dado(/^Que eu tenha realizado Login$/) do                                     
  
  	visit ('http://opensource.demo.orangehrmlive.com/')
  	fill_in('txtUsername', :with => 'admin')
 	fill_in('txtPassword', :with => 'admin')
	click_button('btnLogin')

end                                                                           
                                                                              
Dado(/^Efetua cadastro com dados válidos$/) do                                
 
 	click_link('menu_pim_viewPimModule')
	click_link('menu_pim_addEmployee')
	fill_in('firstName', :with => 'Carmelo')
	fill_in('middleName', :with => 'Novo')
	fill_in('lastName', :with => 'Empregador')
	fill_in('employeeId', :with => '1001')


employeeId
end                                                                           
                                                                              
Então(/^Cadastro realizado com Sucesso$/) do   

  click_button('btnSave') 
  
end                          
