-- 코드를 입력하세요
SELECT animal_ins.animal_id, animal_ins.animal_type, animal_ins.name
from animal_ins left join animal_outs on animal_ins.animal_id=animal_outs.animal_id
where animal_ins.SEX_UPON_INTAKE like 'intact%' and (animal_outs.SEX_UPON_OUTCOME like 'Neutered%' or animal_outs.SEX_UPON_OUTCOME like 'Spayed%')