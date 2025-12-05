import Image from "next/image";
import Link from "next/link";

export default function Header() {
  return (
        <header className="w-full flex items-center w-full justify-between px-6 py-4">
            <div className="flex flex-row  items-center justify-between w-full">
                <Image 
                    src={"/logo.png"} 
                    alt="Logo" 
                    width={150} 
                    height={38} 
                    priority 
                    className="ml-15" 
                />
                <div className="text-center text-white font-bold mr-15">
                    <Link href="/auth/login" className="px-10 bg-[#0950C2] py-3  border-[#0950C2] border-2 rounded-4xl mr-5">
                        Login
                    </Link>
                    <Link href="/auth/registration" className="px-10 py-3 border-2 border-[#0950C2] text-[#0950C2] rounded-4xl">
                        Sign Up
                    </Link>
                </div>
            </div>
        </header>    
  );
}
