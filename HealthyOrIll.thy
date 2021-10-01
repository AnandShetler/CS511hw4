theory HealthyOrIll
  imports Main

begin

lemma healthy_or_ill: "(healthy \<or> ill) \<and> (healthy \<longrightarrow> travel) \<and> \<not>ill \<longrightarrow> travel"
  apply (rule impI)
  apply (erule conjE)
  apply (erule disjE)
   apply (erule conjE)
   apply (erule impE)
    apply assumption
   apply assumption
  apply (erule conjE)
  apply (erule notE)
  apply assumption
  done
   
end