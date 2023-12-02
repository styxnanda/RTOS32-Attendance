import {
  Controller,
  Get,
  Post,
  Body,
  Patch,
  Param,
  Delete,
} from '@nestjs/common';
import { AbsensiService } from './absensi.service';
import { CreateAbsensiDto } from './dto/create-absensi.dto';
import { UpdateAbsensiDto } from './dto/update-absensi.dto';
import { Absensi } from './entities/absensi.entity';

@Controller('absensi')
export class AbsensiController {
  constructor(private readonly absensiService: AbsensiService) {}

  @Get('/kelas/:idKelas/minggu/:mingguKe')
  getKehadiran(
    @Param('idKelas') idKelas: number,
    @Param('mingguKe') mingguKe: number,
  ): Promise<any> {
    return this.absensiService.getKehadiran(idKelas, mingguKe);
  }

  @Post()
  create(@Body() createAbsensiDto: CreateAbsensiDto) {
    return this.absensiService.create(createAbsensiDto);
  }

  @Get()
  findAll() {
    return this.absensiService.findAll();
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.absensiService.findOne(+id);
  }

  @Patch(':id')
  update(@Param('id') id: string, @Body() updateAbsensiDto: UpdateAbsensiDto) {
    return this.absensiService.update(+id, updateAbsensiDto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.absensiService.remove(+id);
  }
}
