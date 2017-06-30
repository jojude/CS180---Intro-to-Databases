create or replace function movePerson(mover_ssn int, mover_address char(40),mover_ApartmentNumber int)
returns integer
language plpgsql
as $$
declare
		mover_name varchar;
		mover_salary integer;
        result_ssn integer;
        result_address varchar;
        result_apartmentCount integer;
        result_houseid integer DEFAULT -1;
begin
        select ssn from persons where ssn = mover_ssn into result_ssn;
        select houseaddress from houses where houseaddress = mover_address into result_address;

        if result_ssn is not null and result_address is not null and mover_ApartmentNumber >= 1 then

                select apartmentCount from houses where houseaddress = result_address into result_apartmentCount;

                if result_apartmentCount >= mover_ApartmentNumber then

                    select houseid from houses where houseaddress = result_address into result_houseid;
                    select name from persons where ssn = result_ssn into mover_name;
                    select salary from persons where ssn = result_ssn into mover_salary;

                    delete from persons where ssn = result_ssn;

                    insert into persons(ssn,name,houseid,apartmentnumber,salary) values(result_ssn,mover_name,result_houseid, mover_ApartmentNumber,mover_salary);

                end if;
        end if;

        return result_houseid;
end $$
