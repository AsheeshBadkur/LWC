public abstract class ReserveBank {
    
     public void Withdraw(String bankName){
        system.debug('This is withdraw method of'+bankname);
    }
    public void Deposite(String bankName){
        system.debug('This is the withdraw methof of '+ bankname);   
    }
   
    public abstract void calculateEMI();
    
}