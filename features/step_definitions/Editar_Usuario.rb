Dado(/^Pesquise por um empregdor cadastrado$/) do
  
  click_link('menu_pim_viewPimModule')
	fill_in('empsearch_employee_name_empName', :with => 'Carmelo')
	click_button('searchBtn')
	find(:xpath,'//*[@id="resultTable"]/tbody/tr/td[3]/a').click	
	click_button('btnSave')

end

Dado(/^Edite suas informações com dados válidos$/) do
  
fill_in('personal_txtEmpFirstName', :with => 'Carmelo')
fill_in('personal_txtEmpMiddleName', :with => 'Silva')
fill_in('personal_txtEmpLastName', :with => 'Sousa')
fill_in('personal_txtOtherID', :with => '0030')
fill_in('personal_txtLicExpDate', :with => '2017-03-03')
fill_in('personal_DOB', :with => '2001-03-03')

end

Então(/^Edição realizado com sucesso$/) do
  click_button('btnSave')
end