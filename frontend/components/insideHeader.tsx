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
                <div className="flex gap-15 items-center flex-row mr-15 text-[18px] font-bold">
                    <Link href="/insideTCareer/find/career">
                        Find Career
                    </Link>
                    <Link href="/insideTCareer/find/class">
                        Find Class
                    </Link>
                    <Link href="/insideTCareer/browse">
                        Browse Class
                    </Link>
                </div>
                <div className="text-center text-white font-bold mr-15">
                    <Link href="/insideTCareer/profile">
                        <Image src="/profile.png" alt="profile"
                            width={50}
                            height={30}
                        />
                    </Link>
                </div>
            </div>
        </header>    
  );
}
