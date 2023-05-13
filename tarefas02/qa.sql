CREATE OR REPLACE FUNCTION get_age(n date)
returns int
language plpgsql
as
$$
begin
	return date_part('year', age(n));
end;
$$;