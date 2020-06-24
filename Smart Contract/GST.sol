pragma solidity ^0.4.18;

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

    struct Customer{
        uint Cid;
	    string Cname;
        string Cmobile;
        uint Cage;
        string Cgender;
        //address Caddress;
    }
    Customer []cust;
    
    struct Merchant{
        uint GST_id;
        string Mname;
        string Mmobile;
        string Mgender;
        uint Mage;
        //uint Maccount_no;
        //string Mbussiness_name;
        
        //address Maddress;
    }
    Merchant []mr;
    
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
    function addMerchant(uint GST_id,string Mname,string Mmobile,string Mgender,uint Mage) public {
        Merchant memory m = Merchant(GST_id,Mname,Mmobile,Mgender,Mage);
        mr.push(m);
    }
    function addCustomer(uint Cid,string Cname,string Cmobile,uint Cage,string Cgender) public{
        Customer memory c = Customer(Cid,Cname,Cmobile,Cage,Cgender);
        cust.push(c);
    }
    function getCustomer(uint Cid)public view returns(string,string,uint,string){
        uint i;
        for(i=0;i<cust.length;i++)
        {
            Customer memory c=cust[i];
            if(c.Cid==Cid)
            {
                return (c.Cname,c.Cmobile,c.Cage,c.Cgender);
            }
        }
        
    }
    
    function getMerchant(uint GST_id)public view returns(string,string,string,uint){
        uint i;
        for(i=0;i<mr.length;i++)
        {
            Merchant memory m = mr[i];
            if(m.GST_id==GST_id)
            {
                return (m.Mname,m.Mmobile,m.Mgender,m.Mage);
            }
        }
        
    }

}