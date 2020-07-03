pragma solidity ^0.4.26;

contract gst{

    struct Admin{
        string Aname;
        string Aid;
    }
    Admin []ad;

    struct Govt{
        uint G_acnt_no;
        string G_ifsc_code;
    }
    Govt []gv;
    
    struct System{
        uint Maccount_no;
        //uint Govt_bnk_acnt_no;
        uint Gst_amount;
        uint Non_gst;
    }
    System []sm;

    struct bill{
        string name;
        string number;
        uint GST_no;
        string Total_amount;
        string GST_amount;
        uint VID;
    }bill[] bills;
    
    struct merchant{
    string name;
    string email;
    uint GST_number;
    string Age;
    string mobile;
    string gender;
    string password;
    } merchant[]  signup;
    
    function addAdmin(string Aname,string Aid) public{
        Admin memory a = Admin(Aname,Aid);
        ad.push(a);
    }
    function addGovt(uint G_acnt_no,string G_ifsc_code) public{
        Govt memory g = Govt(G_acnt_no,G_ifsc_code);
        gv.push(g);
    }
    function addSystem(uint Maccount_no,uint Gst_amount,uint Non_gst) public{
        System memory s = System(Maccount_no,Gst_amount,Non_gst);
        sm.push(s);
    }
    
    
    function registerMerchant(string _name,string _email, uint _GST_number,string _Age,string _mobile,string _gender, string _password) public
    {
        signup.push(merchant(_name,_email,_GST_number,_Age,_mobile,_gender,_password)); //keccak256, sha3, sha256
    }
    function getMerchant(uint _GST_number) public view returns(string,string,uint,string,string,string) {
        uint i;
        for (i=0; i< signup.length;i++){
            merchant memory m =signup[i];
            if (m.GST_number==_GST_number){
                return (m.name,m.email,m.GST_number,m.Age,m.mobile,m.gender);
            }
        }
    }
    function checklogin(uint userid,string password1) public view returns(string){
         uint i;
         for (i=0; i< signup.length;i++){
              merchant memory m =signup[i];
             if ( keccak256(abi.encodePacked(userid)) ==  keccak256(abi.encodePacked(m.GST_number)) &&  keccak256(abi.encodePacked(password1)) == keccak256(abi.encodePacked(m.password))){
                 return("true");     
             }
          }
          return("false");
    }
    function addbill(string _name1,string _mob1,uint _GST_no1,string _Total_amount1,string _GST_amount1,uint _VID1) public
    { 
        bills.push(bill( _name1, _mob1, _GST_no1, _Total_amount1, _GST_amount1, _VID1));
    }
    function getbill(uint _GST_number,uint i) public view returns(string,string,string,string,uint) {
        bill memory b =bills[i];
            if(b.GST_no==_GST_number){
                return(b.name,b.number,b.Total_amount,b.GST_amount,b.VID);
            }
            else
            {
                return ;
            }
    }
    function len()public view returns(uint){
        return bills.length;
    }
    function getbill2(uint vid,uint i) public view returns(string,string,string,string,uint) {
        bill memory b =bills[i];
            if(b.VID == vid){
                return(b.name,b.number,b.Total_amount,b.GST_amount,b.GST_no);
            }
             else
            {
                return ;
            }
    }
}


